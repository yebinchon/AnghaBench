
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pinctrl_dev {int dummy; } ;
struct max77620_pctrl_info {int rmap; TYPE_1__* pin_info; struct device* dev; } ;
struct device {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {int drv_type; } ;


 unsigned int BIT (unsigned int) ;
 int ENOTSUPP ;
 int MAX77620_PIN_OD_DRV ;
 int MAX77620_PIN_PP_DRV ;
 int MAX77620_REG_PDE_GPIO ;
 int MAX77620_REG_PUE_GPIO ;




 int dev_err (struct device*,char*,...) ;
 unsigned long pinconf_to_config_packed (int,int ) ;
 int pinconf_to_config_param (unsigned long) ;
 struct max77620_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int max77620_pinconf_get(struct pinctrl_dev *pctldev,
    unsigned int pin, unsigned long *config)
{
 struct max77620_pctrl_info *mpci = pinctrl_dev_get_drvdata(pctldev);
 struct device *dev = mpci->dev;
 enum pin_config_param param = pinconf_to_config_param(*config);
 unsigned int val;
 int arg = 0;
 int ret;

 switch (param) {
 case 129:
  if (mpci->pin_info[pin].drv_type == MAX77620_PIN_OD_DRV)
   arg = 1;
  break;

 case 128:
  if (mpci->pin_info[pin].drv_type == MAX77620_PIN_PP_DRV)
   arg = 1;
  break;

 case 130:
  ret = regmap_read(mpci->rmap, MAX77620_REG_PUE_GPIO, &val);
  if (ret < 0) {
   dev_err(dev, "Reg PUE_GPIO read failed: %d\n", ret);
   return ret;
  }
  if (val & BIT(pin))
   arg = 1;
  break;

 case 131:
  ret = regmap_read(mpci->rmap, MAX77620_REG_PDE_GPIO, &val);
  if (ret < 0) {
   dev_err(dev, "Reg PDE_GPIO read failed: %d\n", ret);
   return ret;
  }
  if (val & BIT(pin))
   arg = 1;
  break;

 default:
  dev_err(dev, "Properties not supported\n");
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, (u16)arg);

 return 0;
}
