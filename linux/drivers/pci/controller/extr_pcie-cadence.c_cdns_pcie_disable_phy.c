
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns_pcie {int phy_count; int * phy; } ;


 int phy_exit (int ) ;
 int phy_power_off (int ) ;

void cdns_pcie_disable_phy(struct cdns_pcie *pcie)
{
 int i = pcie->phy_count;

 while (i--) {
  phy_power_off(pcie->phy[i]);
  phy_exit(pcie->phy[i]);
 }
}
