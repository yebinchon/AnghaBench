
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 char const** da850_pupd_group_names ;

__attribute__((used)) static const char *da850_pupd_get_group_name(struct pinctrl_dev *pctldev,
          unsigned int selector)
{
 return da850_pupd_group_names[selector];
}
