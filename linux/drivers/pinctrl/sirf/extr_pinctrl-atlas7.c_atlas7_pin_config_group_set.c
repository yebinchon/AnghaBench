
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int ENOTSUPP ;
 scalar_t__ atlas7_pin_config_set (struct pinctrl_dev*,unsigned int const,unsigned long*,unsigned int) ;
 int atlas7_pinctrl_get_group_pins (struct pinctrl_dev*,unsigned int,unsigned int const**,unsigned int*) ;

__attribute__((used)) static int atlas7_pin_config_group_set(struct pinctrl_dev *pctldev,
    unsigned group, unsigned long *configs,
    unsigned num_configs)
{
 const unsigned *pins;
 unsigned npins;
 int i, ret;

 ret = atlas7_pinctrl_get_group_pins(pctldev, group, &pins, &npins);
 if (ret)
  return ret;
 for (i = 0; i < npins; i++) {
  if (atlas7_pin_config_set(pctldev, pins[i],
       configs, num_configs))
   return -ENOTSUPP;
 }
 return 0;
}
