
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_pmc {TYPE_2__* soc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* io_pads; } ;
struct TYPE_3__ {unsigned int id; } ;


 struct tegra_pmc* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int tegra_io_pad_pinctrl_get_group_pins(struct pinctrl_dev *pctl_dev,
            unsigned int group,
            const unsigned int **pins,
            unsigned int *num_pins)
{
 struct tegra_pmc *pmc = pinctrl_dev_get_drvdata(pctl_dev);

 *pins = &pmc->soc->io_pads[group].id;
 *num_pins = 1;

 return 0;
}
