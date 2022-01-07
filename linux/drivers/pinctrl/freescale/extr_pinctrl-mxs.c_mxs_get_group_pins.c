
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct mxs_pinctrl_data {TYPE_2__* soc; } ;
struct TYPE_4__ {TYPE_1__* groups; } ;
struct TYPE_3__ {unsigned int* pins; unsigned int npins; } ;


 struct mxs_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mxs_get_group_pins(struct pinctrl_dev *pctldev, unsigned group,
         const unsigned **pins, unsigned *num_pins)
{
 struct mxs_pinctrl_data *d = pinctrl_dev_get_drvdata(pctldev);

 *pins = d->soc->groups[group].pins;
 *num_pins = d->soc->groups[group].npins;

 return 0;
}
