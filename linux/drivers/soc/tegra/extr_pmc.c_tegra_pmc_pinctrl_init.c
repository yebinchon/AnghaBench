
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tegra_pmc {int dev; int pctl_dev; TYPE_1__* soc; } ;
struct TYPE_5__ {scalar_t__ npins; int pins; int name; } ;
struct TYPE_4__ {scalar_t__ num_pin_descs; int pin_descs; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*,int) ;
 int dev_name (int ) ;
 int devm_pinctrl_register (int ,TYPE_2__*,struct tegra_pmc*) ;
 TYPE_2__ tegra_pmc_pctl_desc ;

__attribute__((used)) static int tegra_pmc_pinctrl_init(struct tegra_pmc *pmc)
{
 int err;

 if (!pmc->soc->num_pin_descs)
  return 0;

 tegra_pmc_pctl_desc.name = dev_name(pmc->dev);
 tegra_pmc_pctl_desc.pins = pmc->soc->pin_descs;
 tegra_pmc_pctl_desc.npins = pmc->soc->num_pin_descs;

 pmc->pctl_dev = devm_pinctrl_register(pmc->dev, &tegra_pmc_pctl_desc,
           pmc);
 if (IS_ERR(pmc->pctl_dev)) {
  err = PTR_ERR(pmc->pctl_dev);
  dev_err(pmc->dev, "failed to register pin controller: %d\n",
   err);
  return err;
 }

 return 0;
}
