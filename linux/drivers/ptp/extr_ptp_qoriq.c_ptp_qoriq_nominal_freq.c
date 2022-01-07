
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 ptp_qoriq_nominal_freq(u32 clk_src)
{
 u32 remainder = 0;

 clk_src /= 1000000;
 remainder = clk_src % 100;
 if (remainder) {
  clk_src -= remainder;
  clk_src += 100;
 }

 do {
  clk_src -= 100;

 } while (1000 % clk_src);

 return clk_src * 1000000;
}
