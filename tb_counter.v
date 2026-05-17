`timescale 1ns/1ps

module tb_counter;

reg clk;
reg rst;
wire [3:0] q;

counter uut(
    .clk(clk),
    .rst(rst),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;

    #10 rst = 0;

    #100 $finish;
end

initial begin
    $monitor("Time=%0t q=%b",$time,q);
end

endmodule