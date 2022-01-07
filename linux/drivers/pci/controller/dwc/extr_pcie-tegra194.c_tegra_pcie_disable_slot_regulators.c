
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie_dw {scalar_t__ slot_ctl_3v3; scalar_t__ slot_ctl_12v; } ;


 int regulator_disable (scalar_t__) ;

__attribute__((used)) static void tegra_pcie_disable_slot_regulators(struct tegra_pcie_dw *pcie)
{
 if (pcie->slot_ctl_12v)
  regulator_disable(pcie->slot_ctl_12v);
 if (pcie->slot_ctl_3v3)
  regulator_disable(pcie->slot_ctl_3v3);
}
