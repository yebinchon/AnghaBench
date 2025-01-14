
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int chv_config_get (struct pinctrl_dev*,unsigned int const,unsigned long*) ;
 int chv_get_group_pins (struct pinctrl_dev*,unsigned int,unsigned int const**,unsigned int*) ;

__attribute__((used)) static int chv_config_group_get(struct pinctrl_dev *pctldev,
    unsigned int group,
    unsigned long *config)
{
 const unsigned int *pins;
 unsigned int npins;
 int ret;

 ret = chv_get_group_pins(pctldev, group, &pins, &npins);
 if (ret)
  return ret;

 ret = chv_config_get(pctldev, pins[0], config);
 if (ret)
  return ret;

 return 0;
}
