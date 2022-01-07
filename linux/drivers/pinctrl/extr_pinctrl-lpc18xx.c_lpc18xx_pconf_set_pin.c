
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dev; } ;
struct lpc18xx_pin_caps {int type; } ;


 int ENOTSUPP ;
 int LPC18XX_SCU_PIN_EHD_MASK ;
 int LPC18XX_SCU_PIN_EHD_POS ;
 int LPC18XX_SCU_PIN_EHS ;
 int LPC18XX_SCU_PIN_EPD ;
 int LPC18XX_SCU_PIN_EPUN ;
 int LPC18XX_SCU_PIN_EZI ;
 int LPC18XX_SCU_PIN_ZIF ;
 int TYPE_HD ;
 int dev_err (int ,char*,...) ;
 int lpc18xx_pconf_set_gpio_pin_int (struct pinctrl_dev*,int,unsigned int) ;

__attribute__((used)) static int lpc18xx_pconf_set_pin(struct pinctrl_dev *pctldev, unsigned param,
     u32 param_val, u32 *reg, unsigned pin,
     struct lpc18xx_pin_caps *pin_cap)
{
 switch (param) {
 case 135:
  *reg &= ~LPC18XX_SCU_PIN_EPD;
  *reg |= LPC18XX_SCU_PIN_EPUN;
  break;

 case 133:
  *reg &= ~LPC18XX_SCU_PIN_EPUN;
  break;

 case 134:
  *reg |= LPC18XX_SCU_PIN_EPD;
  break;

 case 130:
  if (param_val)
   *reg |= LPC18XX_SCU_PIN_EZI;
  else
   *reg &= ~LPC18XX_SCU_PIN_EZI;
  break;

 case 128:
  if (pin_cap->type == TYPE_HD) {
   dev_err(pctldev->dev, "Slew rate unsupported on high-drive pins\n");
   return -ENOTSUPP;
  }

  if (param_val == 0)
   *reg &= ~LPC18XX_SCU_PIN_EHS;
  else
   *reg |= LPC18XX_SCU_PIN_EHS;
  break;

 case 129:
  if (param_val)
   *reg &= ~LPC18XX_SCU_PIN_ZIF;
  else
   *reg |= LPC18XX_SCU_PIN_ZIF;
  break;

 case 132:
  if (pin_cap->type != TYPE_HD) {
   dev_err(pctldev->dev, "Drive strength available only on high-drive pins\n");
   return -ENOTSUPP;
  }
  *reg &= ~LPC18XX_SCU_PIN_EHD_MASK;

  switch (param_val) {
  case 20: param_val -= 5;

  case 14: param_val -= 5;

  case 8: param_val -= 3;

  case 4: param_val -= 4;
    break;
  default:
   dev_err(pctldev->dev, "Drive strength %u unsupported\n", param_val);
   return -ENOTSUPP;
  }
  *reg |= param_val << LPC18XX_SCU_PIN_EHD_POS;
  break;

 case 131:
  return lpc18xx_pconf_set_gpio_pin_int(pctldev, param_val, pin);

 default:
  dev_err(pctldev->dev, "Property not supported\n");
  return -ENOTSUPP;
 }

 return 0;
}
