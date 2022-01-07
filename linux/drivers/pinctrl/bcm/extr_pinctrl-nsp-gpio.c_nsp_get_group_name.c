
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;



__attribute__((used)) static const char *nsp_get_group_name(struct pinctrl_dev *pctldev,
          unsigned selector)
{
 return "gpio_grp";
}
