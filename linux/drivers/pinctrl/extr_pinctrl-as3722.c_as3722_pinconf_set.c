
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct as3722_pctrl_info {TYPE_1__* gpio_control; int dev; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {int mode_prop; } ;


 int AS3722_GPIO_MODE_HIGH_IMPED ;
 int AS3722_GPIO_MODE_OPEN_DRAIN ;
 int AS3722_GPIO_MODE_PULL_DOWN ;
 int AS3722_GPIO_MODE_PULL_UP ;
 int ENOTSUPP ;






 int dev_err (int ,char*) ;
 int pinconf_to_config_param (unsigned long) ;
 struct as3722_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int as3722_pinconf_set(struct pinctrl_dev *pctldev,
   unsigned pin, unsigned long *configs,
   unsigned num_configs)
{
 struct as3722_pctrl_info *as_pci = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param;
 int mode_prop;
 int i;

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  mode_prop = as_pci->gpio_control[pin].mode_prop;

  switch (param) {
  case 130:
   break;

  case 133:
   mode_prop &= ~(AS3722_GPIO_MODE_PULL_UP |
     AS3722_GPIO_MODE_PULL_DOWN);
   break;
  case 129:
   mode_prop |= AS3722_GPIO_MODE_PULL_UP;
   break;

  case 131:
   mode_prop |= AS3722_GPIO_MODE_PULL_DOWN;
   break;

  case 132:
   mode_prop |= AS3722_GPIO_MODE_HIGH_IMPED;
   break;

  case 128:
   mode_prop |= AS3722_GPIO_MODE_OPEN_DRAIN;
   break;

  default:
   dev_err(as_pci->dev, "Properties not supported\n");
   return -ENOTSUPP;
  }

  as_pci->gpio_control[pin].mode_prop = mode_prop;
 }
 return 0;
}
