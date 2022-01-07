
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct ocelot_pinctrl {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {unsigned int number; } ;


 struct ocelot_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int ocelot_pctl_get_group_pins(struct pinctrl_dev *pctldev,
          unsigned int group,
          const unsigned int **pins,
          unsigned int *num_pins)
{
 struct ocelot_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);

 *pins = &info->desc->pins[group].number;
 *num_pins = 1;

 return 0;
}
