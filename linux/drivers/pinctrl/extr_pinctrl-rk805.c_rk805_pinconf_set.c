
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct rk805_pctrl_info {int dev; int gpio_chip; } ;
struct pinctrl_dev {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int ENOTSUPP ;

 int dev_err (int ,char*) ;
 unsigned int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct rk805_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int rk805_gpio_set (int *,unsigned int,unsigned int) ;
 int rk805_pmx_gpio_set_direction (struct pinctrl_dev*,int *,unsigned int,int) ;

__attribute__((used)) static int rk805_pinconf_set(struct pinctrl_dev *pctldev,
        unsigned int pin, unsigned long *configs,
        unsigned int num_configs)
{
 struct rk805_pctrl_info *pci = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param;
 u32 i, arg = 0;

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 128:
   rk805_gpio_set(&pci->gpio_chip, pin, arg);
   rk805_pmx_gpio_set_direction(pctldev, ((void*)0), pin, 0);
   break;
  default:
   dev_err(pci->dev, "Properties not supported\n");
   return -ENOTSUPP;
  }
 }

 return 0;
}
