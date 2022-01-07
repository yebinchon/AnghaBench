
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
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
 unsigned long pinconf_to_config_packed (int,int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct as3722_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int as3722_pinconf_get(struct pinctrl_dev *pctldev,
   unsigned pin, unsigned long *config)
{
 struct as3722_pctrl_info *as_pci = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param = pinconf_to_config_param(*config);
 int arg = 0;
 u16 prop;

 switch (param) {
 case 132:
  prop = AS3722_GPIO_MODE_PULL_UP |
    AS3722_GPIO_MODE_PULL_DOWN;
  if (!(as_pci->gpio_control[pin].mode_prop & prop))
   arg = 1;
  prop = 0;
  break;

 case 129:
  prop = AS3722_GPIO_MODE_PULL_UP;
  break;

 case 130:
  prop = AS3722_GPIO_MODE_PULL_DOWN;
  break;

 case 128:
  prop = AS3722_GPIO_MODE_OPEN_DRAIN;
  break;

 case 131:
  prop = AS3722_GPIO_MODE_HIGH_IMPED;
  break;

 default:
  dev_err(as_pci->dev, "Properties not supported\n");
  return -ENOTSUPP;
 }

 if (as_pci->gpio_control[pin].mode_prop & prop)
  arg = 1;

 *config = pinconf_to_config_packed(param, (u16)arg);
 return 0;
}
