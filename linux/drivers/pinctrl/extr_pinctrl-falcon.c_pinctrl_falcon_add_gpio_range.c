
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_gpio_range {int dummy; } ;
struct TYPE_2__ {int pctrl; } ;


 TYPE_1__ falcon_info ;
 int pinctrl_add_gpio_range (int ,struct pinctrl_gpio_range*) ;

void pinctrl_falcon_add_gpio_range(struct pinctrl_gpio_range *range)
{
 pinctrl_add_gpio_range(falcon_info.pctrl, range);
}
