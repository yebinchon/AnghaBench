
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_pmx {TYPE_2__* soc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* groups; } ;
struct TYPE_3__ {unsigned int* pins; unsigned int npins; } ;


 struct tegra_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int tegra_pinctrl_get_group_pins(struct pinctrl_dev *pctldev,
     unsigned group,
     const unsigned **pins,
     unsigned *num_pins)
{
 struct tegra_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);

 *pins = pmx->soc->groups[group].pins;
 *num_pins = pmx->soc->groups[group].npins;

 return 0;
}
