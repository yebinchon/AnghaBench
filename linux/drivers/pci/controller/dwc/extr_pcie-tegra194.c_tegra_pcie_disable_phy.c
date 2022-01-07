
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie_dw {unsigned int phy_count; int * phys; } ;


 int phy_exit (int ) ;
 int phy_power_off (int ) ;

__attribute__((used)) static void tegra_pcie_disable_phy(struct tegra_pcie_dw *pcie)
{
 unsigned int phy_count = pcie->phy_count;

 while (phy_count--) {
  phy_power_off(pcie->phys[phy_count]);
  phy_exit(pcie->phys[phy_count]);
 }
}
