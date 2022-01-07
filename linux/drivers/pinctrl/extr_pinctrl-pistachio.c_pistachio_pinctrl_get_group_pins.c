
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pistachio_pinctrl {TYPE_1__* groups; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int pin; } ;


 struct pistachio_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int pistachio_pinctrl_get_group_pins(struct pinctrl_dev *pctldev,
         unsigned group,
         const unsigned **pins,
         unsigned *num_pins)
{
 struct pistachio_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);

 *pins = &pctl->groups[group].pin;
 *num_pins = 1;

 return 0;
}
