
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int ENOTSUPP ;
 scalar_t__ pcs_pinconf_get (struct pinctrl_dev*,unsigned int const,unsigned long*) ;
 int pinctrl_generic_get_group_pins (struct pinctrl_dev*,unsigned int,unsigned int const**,unsigned int*) ;

__attribute__((used)) static int pcs_pinconf_group_get(struct pinctrl_dev *pctldev,
    unsigned group, unsigned long *config)
{
 const unsigned *pins;
 unsigned npins, old = 0;
 int i, ret;

 ret = pinctrl_generic_get_group_pins(pctldev, group, &pins, &npins);
 if (ret)
  return ret;
 for (i = 0; i < npins; i++) {
  if (pcs_pinconf_get(pctldev, pins[i], config))
   return -ENOTSUPP;

  if (i && (old != *config))
   return -ENOTSUPP;
  old = *config;
 }
 return 0;
}
