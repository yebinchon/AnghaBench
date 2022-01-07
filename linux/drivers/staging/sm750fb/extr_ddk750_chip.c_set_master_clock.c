
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CURRENT_GATE ;
 unsigned int CURRENT_GATE_MCLK_DIV_3 ;
 unsigned int CURRENT_GATE_MCLK_DIV_4 ;
 unsigned int CURRENT_GATE_MCLK_DIV_6 ;
 unsigned int CURRENT_GATE_MCLK_DIV_8 ;
 unsigned int CURRENT_GATE_MCLK_MASK ;
 unsigned int DIV_ROUND_CLOSEST (int ,unsigned int) ;
 unsigned int MHz (int) ;
 scalar_t__ SM750LE ;
 int get_mxclk_freq () ;
 unsigned int peek32 (int ) ;
 scalar_t__ sm750_get_chip_type () ;
 int sm750_set_current_gate (unsigned int) ;

__attribute__((used)) static void set_master_clock(unsigned int frequency)
{
 unsigned int reg, divisor;





 if (sm750_get_chip_type() == SM750LE)
  return;

 if (frequency) {




  if (frequency > MHz(190))
   frequency = MHz(190);


  divisor = DIV_ROUND_CLOSEST(get_mxclk_freq(), frequency);


  reg = peek32(CURRENT_GATE) & ~CURRENT_GATE_MCLK_MASK;
  switch (divisor) {
  default:
  case 3:
   reg |= CURRENT_GATE_MCLK_DIV_3;
   break;
  case 4:
   reg |= CURRENT_GATE_MCLK_DIV_4;
   break;
  case 6:
   reg |= CURRENT_GATE_MCLK_DIV_6;
   break;
  case 8:
   reg |= CURRENT_GATE_MCLK_DIV_8;
   break;
  }

  sm750_set_current_gate(reg);
 }
}
