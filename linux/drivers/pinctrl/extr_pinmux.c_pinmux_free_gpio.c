
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int kfree (char const*) ;
 char* pin_free (struct pinctrl_dev*,unsigned int,struct pinctrl_gpio_range*) ;

void pinmux_free_gpio(struct pinctrl_dev *pctldev, unsigned pin,
        struct pinctrl_gpio_range *range)
{
 const char *owner;

 owner = pin_free(pctldev, pin, range);
 kfree(owner);
}
