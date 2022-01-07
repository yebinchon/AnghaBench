
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct driver_data {int ssp_type; } ;


 int QUARK_X1000_SSCR0_DataSize (int) ;
 int QUARK_X1000_SSCR0_Motorola ;

 int SSCR0_DataSize (int) ;
 int SSCR0_EDSS ;
 int SSCR0_Motorola ;
 int SSCR0_SSE ;

__attribute__((used)) static u32 pxa2xx_configure_sscr0(const struct driver_data *drv_data,
      u32 clk_div, u8 bits)
{
 switch (drv_data->ssp_type) {
 case 128:
  return clk_div
   | QUARK_X1000_SSCR0_Motorola
   | QUARK_X1000_SSCR0_DataSize(bits > 32 ? 8 : bits)
   | SSCR0_SSE;
 default:
  return clk_div
   | SSCR0_Motorola
   | SSCR0_DataSize(bits > 16 ? bits - 16 : bits)
   | SSCR0_SSE
   | (bits > 16 ? SSCR0_EDSS : 0);
 }
}
