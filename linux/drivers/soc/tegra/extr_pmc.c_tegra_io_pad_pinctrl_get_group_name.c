
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_pmc {TYPE_2__* soc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* io_pads; } ;
struct TYPE_3__ {char const* name; } ;


 struct tegra_pmc* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *tegra_io_pad_pinctrl_get_group_name(struct pinctrl_dev *pctl,
             unsigned int group)
{
 struct tegra_pmc *pmc = pinctrl_dev_get_drvdata(pctl);

 return pmc->soc->io_pads[group].name;
}
