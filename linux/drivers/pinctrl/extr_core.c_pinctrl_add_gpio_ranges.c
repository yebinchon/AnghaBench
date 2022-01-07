
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int pinctrl_add_gpio_range (struct pinctrl_dev*,struct pinctrl_gpio_range*) ;

void pinctrl_add_gpio_ranges(struct pinctrl_dev *pctldev,
        struct pinctrl_gpio_range *ranges,
        unsigned nranges)
{
 int i;

 for (i = 0; i < nranges; i++)
  pinctrl_add_gpio_range(pctldev, &ranges[i]);
}
