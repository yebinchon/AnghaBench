
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_value {int clockType; int inputFreq; } ;
struct mode_parameter {int pixel_clock; } ;
typedef enum clock_type { ____Placeholder_clock_type } clock_type ;


 int DEFAULT_INPUT_CLOCK ;
 scalar_t__ SM750LE ;
 int outb_p (int,int) ;
 int programModeRegisters (struct mode_parameter*,struct pll_value*) ;
 unsigned int sm750_calc_pll_value (int ,struct pll_value*) ;
 scalar_t__ sm750_get_chip_type () ;

int ddk750_setModeTiming(struct mode_parameter *parm, enum clock_type clock)
{
 struct pll_value pll;
 unsigned int uiActualPixelClk;

 pll.inputFreq = DEFAULT_INPUT_CLOCK;
 pll.clockType = clock;

 uiActualPixelClk = sm750_calc_pll_value(parm->pixel_clock, &pll);
 if (sm750_get_chip_type() == SM750LE) {

  outb_p(0x88, 0x3d4);
  outb_p(0x06, 0x3d5);
 }
 programModeRegisters(parm, &pll);
 return 0;
}
