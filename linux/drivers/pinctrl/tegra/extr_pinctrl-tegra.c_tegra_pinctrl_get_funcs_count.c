
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_pmx {TYPE_1__* soc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {int nfunctions; } ;


 struct tegra_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int tegra_pinctrl_get_funcs_count(struct pinctrl_dev *pctldev)
{
 struct tegra_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);

 return pmx->soc->nfunctions;
}
