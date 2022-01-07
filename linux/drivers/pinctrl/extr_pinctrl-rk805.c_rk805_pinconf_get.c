
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct rk805_pctrl_info {int dev; int gpio_chip; } ;
struct pinctrl_dev {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int ENOTSUPP ;

 int dev_err (int ,char*) ;
 unsigned long pinconf_to_config_packed (int,int ) ;
 int pinconf_to_config_param (unsigned long) ;
 struct rk805_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 scalar_t__ rk805_gpio_get (int *,unsigned int) ;

__attribute__((used)) static int rk805_pinconf_get(struct pinctrl_dev *pctldev,
        unsigned int pin, unsigned long *config)
{
 struct rk805_pctrl_info *pci = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param = pinconf_to_config_param(*config);
 u32 arg = 0;

 switch (param) {
 case 128:
  arg = rk805_gpio_get(&pci->gpio_chip, pin);
  break;
 default:
  dev_err(pci->dev, "Properties not supported\n");
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, (u16)arg);

 return 0;
}
