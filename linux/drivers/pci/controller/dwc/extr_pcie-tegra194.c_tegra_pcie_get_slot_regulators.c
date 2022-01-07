
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie_dw {int * slot_ctl_12v; int dev; int * slot_ctl_3v3; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 void* devm_regulator_get_optional (int ,char*) ;

__attribute__((used)) static int tegra_pcie_get_slot_regulators(struct tegra_pcie_dw *pcie)
{
 pcie->slot_ctl_3v3 = devm_regulator_get_optional(pcie->dev, "vpcie3v3");
 if (IS_ERR(pcie->slot_ctl_3v3)) {
  if (PTR_ERR(pcie->slot_ctl_3v3) != -ENODEV)
   return PTR_ERR(pcie->slot_ctl_3v3);

  pcie->slot_ctl_3v3 = ((void*)0);
 }

 pcie->slot_ctl_12v = devm_regulator_get_optional(pcie->dev, "vpcie12v");
 if (IS_ERR(pcie->slot_ctl_12v)) {
  if (PTR_ERR(pcie->slot_ctl_12v) != -ENODEV)
   return PTR_ERR(pcie->slot_ctl_12v);

  pcie->slot_ctl_12v = ((void*)0);
 }

 return 0;
}
