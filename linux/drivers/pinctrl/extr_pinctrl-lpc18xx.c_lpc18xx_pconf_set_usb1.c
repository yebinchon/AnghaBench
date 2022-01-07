
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dev; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int ENOTSUPP ;
 int LPC18XX_SCU_USB1_EPD ;
 int LPC18XX_SCU_USB1_EPWR ;



 int dev_err (int ,char*) ;

__attribute__((used)) static int lpc18xx_pconf_set_usb1(struct pinctrl_dev *pctldev,
      enum pin_config_param param,
      u32 param_val, u32 *reg)
{
 switch (param) {
 case 128:
  if (param_val)
   *reg &= ~LPC18XX_SCU_USB1_EPWR;
  else
   *reg |= LPC18XX_SCU_USB1_EPWR;
  break;

 case 130:
  *reg &= ~LPC18XX_SCU_USB1_EPD;
  break;

 case 129:
  *reg |= LPC18XX_SCU_USB1_EPD;
  break;

 default:
  dev_err(pctldev->dev, "Property not supported\n");
  return -ENOTSUPP;
 }

 return 0;
}
