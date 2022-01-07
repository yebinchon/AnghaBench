
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POWER_MODE_CTRL ;
 unsigned int POWER_MODE_CTRL_336CLK ;
 unsigned int POWER_MODE_CTRL_MODE_MASK ;



 unsigned int POWER_MODE_CTRL_OSC_INPUT ;
 scalar_t__ SM750LE ;
 unsigned int peek32 (int ) ;
 int poke32 (int ,unsigned int) ;
 scalar_t__ sm750_get_chip_type () ;

void sm750_set_power_mode(unsigned int mode)
{
 unsigned int ctrl = 0;

 ctrl = peek32(POWER_MODE_CTRL) & ~POWER_MODE_CTRL_MODE_MASK;

 if (sm750_get_chip_type() == SM750LE)
  return;

 switch (mode) {
 case 130:
  ctrl |= 130;
  break;

 case 129:
  ctrl |= 129;
  break;

 case 128:
  ctrl |= 128;
  break;

 default:
  break;
 }


 if (mode == 128) {
  ctrl &= ~POWER_MODE_CTRL_OSC_INPUT;



 } else {
  ctrl |= POWER_MODE_CTRL_OSC_INPUT;



 }


 poke32(POWER_MODE_CTRL, ctrl);
}
