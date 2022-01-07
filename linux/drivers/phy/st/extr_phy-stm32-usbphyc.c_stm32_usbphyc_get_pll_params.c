
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pll_params {int frac; int ndiv; } ;


 unsigned long long HZ_PER_MHZ ;
 scalar_t__ PLL_FVCO_MHZ ;
 int do_div (unsigned long long,int) ;

__attribute__((used)) static void stm32_usbphyc_get_pll_params(u32 clk_rate,
      struct pll_params *pll_params)
{
 unsigned long long fvco, ndiv, frac;
 fvco = (unsigned long long)PLL_FVCO_MHZ * HZ_PER_MHZ;

 ndiv = fvco;
 do_div(ndiv, (clk_rate * 2));
 pll_params->ndiv = (u8)ndiv;

 frac = fvco * (1 << 16);
 do_div(frac, (clk_rate * 2));
 frac = frac - (ndiv * (1 << 16));
 pll_params->frac = (u16)frac;
}
