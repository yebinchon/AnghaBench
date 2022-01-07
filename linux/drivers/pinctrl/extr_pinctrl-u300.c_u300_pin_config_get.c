
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {unsigned int pin_base; unsigned int base; int gc; } ;
struct pinctrl_dev {int dummy; } ;


 int ENOTSUPP ;
 struct pinctrl_gpio_range* pinctrl_find_gpio_range_from_pin (struct pinctrl_dev*,unsigned int) ;
 int u300_gpio_config_get (int ,unsigned int,unsigned long*) ;

__attribute__((used)) static int u300_pin_config_get(struct pinctrl_dev *pctldev, unsigned pin,
          unsigned long *config)
{
 struct pinctrl_gpio_range *range =
  pinctrl_find_gpio_range_from_pin(pctldev, pin);


 if (!range)
  return -ENOTSUPP;

 return u300_gpio_config_get(range->gc,
        (pin - range->pin_base + range->base),
        config);
}
