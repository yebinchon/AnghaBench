
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_value {int clockType; int inputFreq; } ;


 int DEFAULT_INPUT_CLOCK ;
 int MXCLK_PLL ;
 int MXCLK_PLL_CTRL ;
 scalar_t__ SM750LE ;
 int poke32 (int ,int ) ;
 unsigned int sm750_calc_pll_value (unsigned int,struct pll_value*) ;
 int sm750_format_pll_reg (struct pll_value*) ;
 scalar_t__ sm750_get_chip_type () ;

__attribute__((used)) static void set_chip_clock(unsigned int frequency)
{
 struct pll_value pll;
 unsigned int actual_mx_clk;


 if (sm750_get_chip_type() == SM750LE)
  return;

 if (frequency) {



  pll.inputFreq = DEFAULT_INPUT_CLOCK;
  pll.clockType = MXCLK_PLL;
  actual_mx_clk = sm750_calc_pll_value(frequency, &pll);


  poke32(MXCLK_PLL_CTRL, sm750_format_pll_reg(&pll));
 }
}
