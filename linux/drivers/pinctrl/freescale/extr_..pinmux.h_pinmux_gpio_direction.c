
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;



__attribute__((used)) static inline int pinmux_gpio_direction(struct pinctrl_dev *pctldev,
     struct pinctrl_gpio_range *range,
     unsigned pin, bool input)
{
 return 0;
}
