
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u16 ;


 unsigned int CLKDIV_MAX ;
 unsigned int HSPCLKDIV_MAX ;
 unsigned int TBCTL_CLKDIV_SHIFT ;
 unsigned int TBCTL_HSPCLKDIV_SHIFT ;

__attribute__((used)) static int set_prescale_div(unsigned long rqst_prescaler, u16 *prescale_div,
       u16 *tb_clk_div)
{
 unsigned int clkdiv, hspclkdiv;

 for (clkdiv = 0; clkdiv <= CLKDIV_MAX; clkdiv++) {
  for (hspclkdiv = 0; hspclkdiv <= HSPCLKDIV_MAX; hspclkdiv++) {
   *prescale_div = (1 << clkdiv) *
     (hspclkdiv ? (hspclkdiv * 2) : 1);
   if (*prescale_div > rqst_prescaler) {
    *tb_clk_div = (clkdiv << TBCTL_CLKDIV_SHIFT) |
     (hspclkdiv << TBCTL_HSPCLKDIV_SHIFT);
    return 0;
   }
  }
 }

 return 1;
}
