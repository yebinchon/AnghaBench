
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int pr_err (char*,int) ;

u32 cw1200_dpll_from_clk(u16 clk_khz)
{
 switch (clk_khz) {
 case 0x32C8:
  return 0x1D89D241;
 case 0x3E80:
  return 0x000001E1;
 case 0x41A0:
  return 0x124931C1;
 case 0x4B00:
  return 0x00000191;
 case 0x5DC0:
  return 0x00000141;
 case 0x6590:
  return 0x0EC4F121;
 case 0x8340:
  return 0x092490E1;
 case 0x9600:
  return 0x100010C1;
 case 0x9C40:
  return 0x000000C1;
 case 0xBB80:
  return 0x000000A1;
 case 0xCB20:
  return 0x07627091;
 default:
  pr_err("Unknown Refclk freq (0x%04x), using 26000KHz\n",
         clk_khz);
  return 0x0EC4F121;
 }
}
