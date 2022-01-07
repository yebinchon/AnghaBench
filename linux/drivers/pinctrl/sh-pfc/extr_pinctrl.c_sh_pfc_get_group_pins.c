
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sh_pfc_pinctrl {TYPE_3__* pfc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_6__ {TYPE_2__* info; } ;
struct TYPE_5__ {TYPE_1__* groups; } ;
struct TYPE_4__ {unsigned int* pins; unsigned int nr_pins; } ;


 struct sh_pfc_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int sh_pfc_get_group_pins(struct pinctrl_dev *pctldev, unsigned selector,
     const unsigned **pins, unsigned *num_pins)
{
 struct sh_pfc_pinctrl *pmx = pinctrl_dev_get_drvdata(pctldev);

 *pins = pmx->pfc->info->groups[selector].pins;
 *num_pins = pmx->pfc->info->groups[selector].nr_pins;

 return 0;
}
