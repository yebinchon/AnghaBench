
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {unsigned int pin_base; unsigned int base; int gc; } ;
struct pinctrl_dev {int dummy; } ;


 int EINVAL ;
 int pinconf_to_config_param (unsigned long) ;
 struct pinctrl_gpio_range* pinctrl_find_gpio_range_from_pin (struct pinctrl_dev*,unsigned int) ;
 int u300_gpio_config_set (int ,unsigned int,int ) ;

__attribute__((used)) static int u300_pin_config_set(struct pinctrl_dev *pctldev, unsigned pin,
          unsigned long *configs, unsigned num_configs)
{
 struct pinctrl_gpio_range *range =
  pinctrl_find_gpio_range_from_pin(pctldev, pin);
 int ret, i;

 if (!range)
  return -EINVAL;

 for (i = 0; i < num_configs; i++) {

  ret = u300_gpio_config_set(range->gc,
   (pin - range->pin_base + range->base),
   pinconf_to_config_param(configs[i]));
  if (ret)
   return ret;
 }

 return 0;
}
