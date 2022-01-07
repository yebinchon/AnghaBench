
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns_pcie {int phy_count; int * phy; } ;


 int phy_exit (int ) ;
 int phy_init (int ) ;
 int phy_power_off (int ) ;
 int phy_power_on (int ) ;

int cdns_pcie_enable_phy(struct cdns_pcie *pcie)
{
 int ret;
 int i;

 for (i = 0; i < pcie->phy_count; i++) {
  ret = phy_init(pcie->phy[i]);
  if (ret < 0)
   goto err_phy;

  ret = phy_power_on(pcie->phy[i]);
  if (ret < 0) {
   phy_exit(pcie->phy[i]);
   goto err_phy;
  }
 }

 return 0;

err_phy:
 while (--i >= 0) {
  phy_power_off(pcie->phy[i]);
  phy_exit(pcie->phy[i]);
 }

 return ret;
}
