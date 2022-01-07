
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BIT (unsigned int) ;
 unsigned int DEFAULT_INPUT_CLOCK ;
 unsigned int MHz (int) ;
 int MXCLK_PLL_CTRL ;
 unsigned int PLL_CTRL_M_MASK ;
 unsigned int PLL_CTRL_M_SHIFT ;
 unsigned int PLL_CTRL_N_MASK ;
 unsigned int PLL_CTRL_N_SHIFT ;
 unsigned int PLL_CTRL_OD_MASK ;
 unsigned int PLL_CTRL_OD_SHIFT ;
 unsigned int PLL_CTRL_POD_MASK ;
 unsigned int PLL_CTRL_POD_SHIFT ;
 scalar_t__ SM750LE ;
 unsigned int peek32 (int ) ;
 scalar_t__ sm750_get_chip_type () ;

__attribute__((used)) static unsigned int get_mxclk_freq(void)
{
 unsigned int pll_reg;
 unsigned int M, N, OD, POD;

 if (sm750_get_chip_type() == SM750LE)
  return MHz(130);

 pll_reg = peek32(MXCLK_PLL_CTRL);
 M = (pll_reg & PLL_CTRL_M_MASK) >> PLL_CTRL_M_SHIFT;
 N = (pll_reg & PLL_CTRL_N_MASK) >> PLL_CTRL_N_SHIFT;
 OD = (pll_reg & PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT;
 POD = (pll_reg & PLL_CTRL_POD_MASK) >> PLL_CTRL_POD_SHIFT;

 return DEFAULT_INPUT_CLOCK * M / N / BIT(OD) / BIT(POD);
}
