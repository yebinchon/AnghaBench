
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int ENOTSUPP ;
 scalar_t__ ingenic_pinconf_get (struct pinctrl_dev*,unsigned int const,unsigned long*) ;
 int pinctrl_generic_get_group_pins (struct pinctrl_dev*,unsigned int,unsigned int const**,unsigned int*) ;

__attribute__((used)) static int ingenic_pinconf_group_get(struct pinctrl_dev *pctldev,
  unsigned int group, unsigned long *config)
{
 const unsigned int *pins;
 unsigned int i, npins, old = 0;
 int ret;

 ret = pinctrl_generic_get_group_pins(pctldev, group, &pins, &npins);
 if (ret)
  return ret;

 for (i = 0; i < npins; i++) {
  if (ingenic_pinconf_get(pctldev, pins[i], config))
   return -ENOTSUPP;


  if (i && (old != *config))
   return -ENOTSUPP;

  old = *config;
 }

 return 0;
}
