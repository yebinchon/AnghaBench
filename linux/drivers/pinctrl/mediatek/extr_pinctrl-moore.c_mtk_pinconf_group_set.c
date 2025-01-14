
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int mtk_pinconf_set (struct pinctrl_dev*,unsigned int const,unsigned long*,unsigned int) ;
 int pinctrl_generic_get_group_pins (struct pinctrl_dev*,unsigned int,unsigned int const**,unsigned int*) ;

__attribute__((used)) static int mtk_pinconf_group_set(struct pinctrl_dev *pctldev,
     unsigned int group, unsigned long *configs,
     unsigned int num_configs)
{
 const unsigned int *pins;
 unsigned int i, npins;
 int ret;

 ret = pinctrl_generic_get_group_pins(pctldev, group, &pins, &npins);
 if (ret)
  return ret;

 for (i = 0; i < npins; i++) {
  ret = mtk_pinconf_set(pctldev, pins[i], configs, num_configs);
  if (ret)
   return ret;
 }

 return 0;
}
