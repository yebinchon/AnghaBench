
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct pinctrl_dev {int dummy; } ;
struct atlas7_pmx {TYPE_2__* pctl_data; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {char** groups; size_t num_groups; } ;


 struct atlas7_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int atlas7_pmx_get_func_groups(struct pinctrl_dev *pctldev,
  u32 selector, const char * const **groups,
  u32 * const num_groups)
{
 struct atlas7_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);

 *groups = pmx->pctl_data->funcs[selector].groups;
 *num_groups = pmx->pctl_data->funcs[selector].num_groups;

 return 0;
}
