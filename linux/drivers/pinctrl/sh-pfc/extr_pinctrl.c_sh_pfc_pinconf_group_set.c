
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sh_pfc_pinctrl {TYPE_2__* pfc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_6__ {TYPE_1__* groups; } ;
struct TYPE_5__ {TYPE_3__* info; } ;
struct TYPE_4__ {unsigned int* pins; unsigned int nr_pins; } ;


 struct sh_pfc_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 unsigned int sh_pfc_pinconf_set (struct pinctrl_dev*,unsigned int const,unsigned long*,unsigned int) ;

__attribute__((used)) static int sh_pfc_pinconf_group_set(struct pinctrl_dev *pctldev, unsigned group,
        unsigned long *configs,
        unsigned num_configs)
{
 struct sh_pfc_pinctrl *pmx = pinctrl_dev_get_drvdata(pctldev);
 const unsigned int *pins;
 unsigned int num_pins;
 unsigned int i, ret;

 pins = pmx->pfc->info->groups[group].pins;
 num_pins = pmx->pfc->info->groups[group].nr_pins;

 for (i = 0; i < num_pins; ++i) {
  ret = sh_pfc_pinconf_set(pctldev, pins[i], configs, num_configs);
  if (ret)
   return ret;
 }

 return 0;
}
