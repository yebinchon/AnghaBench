
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EINVAL ;
 int ENOTSUPP ;
 int LPC18XX_SCU_USB1_EPD ;
 int LPC18XX_SCU_USB1_EPWR ;




__attribute__((used)) static int lpc18xx_pconf_get_usb1(enum pin_config_param param, int *arg, u32 reg)
{
 switch (param) {
 case 128:
  if (reg & LPC18XX_SCU_USB1_EPWR)
   *arg = 0;
  else
   *arg = 1;
  break;

 case 130:
  if (reg & LPC18XX_SCU_USB1_EPD)
   return -EINVAL;
  break;

 case 129:
  if (reg & LPC18XX_SCU_USB1_EPD)
   *arg = 1;
  else
   return -EINVAL;
  break;

 default:
  return -ENOTSUPP;
 }

 return 0;
}
