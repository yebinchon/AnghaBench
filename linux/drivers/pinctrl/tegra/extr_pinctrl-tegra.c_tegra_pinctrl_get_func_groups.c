
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_pmx {TYPE_2__* soc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* functions; } ;
struct TYPE_3__ {char** groups; unsigned int ngroups; } ;


 struct tegra_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int tegra_pinctrl_get_func_groups(struct pinctrl_dev *pctldev,
      unsigned function,
      const char * const **groups,
      unsigned * const num_groups)
{
 struct tegra_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);

 *groups = pmx->soc->functions[function].groups;
 *num_groups = pmx->soc->functions[function].ngroups;

 return 0;
}
