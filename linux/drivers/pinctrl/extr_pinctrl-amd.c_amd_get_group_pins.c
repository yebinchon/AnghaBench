
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct amd_gpio {TYPE_1__* groups; } ;
struct TYPE_2__ {unsigned int* pins; unsigned int npins; } ;


 struct amd_gpio* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int amd_get_group_pins(struct pinctrl_dev *pctldev,
         unsigned group,
         const unsigned **pins,
         unsigned *num_pins)
{
 struct amd_gpio *gpio_dev = pinctrl_dev_get_drvdata(pctldev);

 *pins = gpio_dev->groups[group].pins;
 *num_pins = gpio_dev->groups[group].npins;
 return 0;
}
