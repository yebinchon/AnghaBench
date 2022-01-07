
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct owl_pinctrl {TYPE_2__* soc; } ;
struct TYPE_4__ {TYPE_1__* groups; } ;
struct TYPE_3__ {unsigned int* pads; unsigned int npads; } ;


 struct owl_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int owl_get_group_pins(struct pinctrl_dev *pctrldev,
    unsigned int group,
    const unsigned int **pins,
    unsigned int *num_pins)
{
 struct owl_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctrldev);

 *pins = pctrl->soc->groups[group].pads;
 *num_pins = pctrl->soc->groups[group].npads;

 return 0;
}
