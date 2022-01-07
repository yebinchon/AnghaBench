
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sr_pcie_phy_core {TYPE_1__* phys; } ;
struct phy {int dummy; } ;
struct of_phandle_args {int* args; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct phy* phy; } ;


 int EINVAL ;
 int ENODEV ;
 struct phy* ERR_PTR (int ) ;
 int SR_NR_PCIE_PHYS ;
 scalar_t__ WARN_ON (int) ;
 struct sr_pcie_phy_core* dev_get_drvdata (struct device*) ;

__attribute__((used)) static struct phy *sr_pcie_phy_xlate(struct device *dev,
         struct of_phandle_args *args)
{
 struct sr_pcie_phy_core *core;
 int phy_idx;

 core = dev_get_drvdata(dev);
 if (!core)
  return ERR_PTR(-EINVAL);

 phy_idx = args->args[0];

 if (WARN_ON(phy_idx >= SR_NR_PCIE_PHYS))
  return ERR_PTR(-ENODEV);

 return core->phys[phy_idx].phy;
}
