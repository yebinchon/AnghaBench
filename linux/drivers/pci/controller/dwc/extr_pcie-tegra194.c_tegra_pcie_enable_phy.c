
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie_dw {unsigned int phy_count; int * phys; } ;


 int phy_exit (int ) ;
 int phy_init (int ) ;
 int phy_power_off (int ) ;
 int phy_power_on (int ) ;

__attribute__((used)) static int tegra_pcie_enable_phy(struct tegra_pcie_dw *pcie)
{
 unsigned int i;
 int ret;

 for (i = 0; i < pcie->phy_count; i++) {
  ret = phy_init(pcie->phys[i]);
  if (ret < 0)
   goto phy_power_off;

  ret = phy_power_on(pcie->phys[i]);
  if (ret < 0)
   goto phy_exit;
 }

 return 0;

phy_power_off:
 while (i--) {
  phy_power_off(pcie->phys[i]);
phy_exit:
  phy_exit(pcie->phys[i]);
 }

 return ret;
}
