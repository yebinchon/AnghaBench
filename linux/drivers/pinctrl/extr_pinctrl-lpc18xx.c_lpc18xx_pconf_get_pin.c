
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct lpc18xx_pin_caps {int type; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int LPC18XX_SCU_PIN_EHD_MASK ;
 int LPC18XX_SCU_PIN_EHD_POS ;
 int LPC18XX_SCU_PIN_EHS ;
 int LPC18XX_SCU_PIN_EPD ;
 int LPC18XX_SCU_PIN_EPUN ;
 int LPC18XX_SCU_PIN_EZI ;
 int LPC18XX_SCU_PIN_ZIF ;
 int TYPE_HD ;
 int lpc18xx_pconf_get_gpio_pin_int (struct pinctrl_dev*,int*,unsigned int) ;

__attribute__((used)) static int lpc18xx_pconf_get_pin(struct pinctrl_dev *pctldev, unsigned param,
     int *arg, u32 reg, unsigned pin,
     struct lpc18xx_pin_caps *pin_cap)
{
 switch (param) {
 case 135:
  if ((!(reg & LPC18XX_SCU_PIN_EPD)) && (reg & LPC18XX_SCU_PIN_EPUN))
   ;
  else
   return -EINVAL;
  break;

 case 133:
  if (reg & LPC18XX_SCU_PIN_EPUN)
   return -EINVAL;
  else
   *arg = 1;
  break;

 case 134:
  if (reg & LPC18XX_SCU_PIN_EPD)
   *arg = 1;
  else
   return -EINVAL;
  break;

 case 130:
  if (reg & LPC18XX_SCU_PIN_EZI)
   *arg = 1;
  else
   return -EINVAL;
  break;

 case 128:
  if (pin_cap->type == TYPE_HD)
   return -ENOTSUPP;

  if (reg & LPC18XX_SCU_PIN_EHS)
   *arg = 1;
  else
   *arg = 0;
  break;

 case 129:
  if (reg & LPC18XX_SCU_PIN_ZIF)
   return -EINVAL;
  else
   *arg = 1;
  break;

 case 132:
  if (pin_cap->type != TYPE_HD)
   return -ENOTSUPP;

  *arg = (reg & LPC18XX_SCU_PIN_EHD_MASK) >> LPC18XX_SCU_PIN_EHD_POS;
  switch (*arg) {
  case 3: *arg += 5;

  case 2: *arg += 5;

  case 1: *arg += 3;

  case 0: *arg += 4;
  }
  break;

 case 131:
  return lpc18xx_pconf_get_gpio_pin_int(pctldev, arg, pin);

 default:
  return -ENOTSUPP;
 }

 return 0;
}
