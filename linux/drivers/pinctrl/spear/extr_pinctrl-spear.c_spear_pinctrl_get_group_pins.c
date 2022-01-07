
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spear_pmx {TYPE_2__* machdata; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__** groups; } ;
struct TYPE_3__ {unsigned int* pins; unsigned int npins; } ;


 struct spear_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int spear_pinctrl_get_group_pins(struct pinctrl_dev *pctldev,
  unsigned group, const unsigned **pins, unsigned *num_pins)
{
 struct spear_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);

 *pins = pmx->machdata->groups[group]->pins;
 *num_pins = pmx->machdata->groups[group]->npins;

 return 0;
}
