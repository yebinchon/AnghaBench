
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sh_pfc_pinctrl {TYPE_2__* pfc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_6__ {TYPE_1__* functions; } ;
struct TYPE_5__ {TYPE_3__* info; } ;
struct TYPE_4__ {char** groups; unsigned int nr_groups; } ;


 struct sh_pfc_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int sh_pfc_get_function_groups(struct pinctrl_dev *pctldev,
          unsigned selector,
          const char * const **groups,
          unsigned * const num_groups)
{
 struct sh_pfc_pinctrl *pmx = pinctrl_dev_get_drvdata(pctldev);

 *groups = pmx->pfc->info->functions[selector].groups;
 *num_groups = pmx->pfc->info->functions[selector].nr_groups;

 return 0;
}
