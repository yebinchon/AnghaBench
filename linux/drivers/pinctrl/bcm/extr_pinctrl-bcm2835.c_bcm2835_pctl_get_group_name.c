
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 char const** bcm2835_gpio_groups ;

__attribute__((used)) static const char *bcm2835_pctl_get_group_name(struct pinctrl_dev *pctldev,
  unsigned selector)
{
 return bcm2835_gpio_groups[selector];
}
