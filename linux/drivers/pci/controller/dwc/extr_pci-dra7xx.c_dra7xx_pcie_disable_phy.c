
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dra7xx_pcie {int phy_count; int * phy; } ;


 int phy_exit (int ) ;
 int phy_power_off (int ) ;

__attribute__((used)) static void dra7xx_pcie_disable_phy(struct dra7xx_pcie *dra7xx)
{
 int phy_count = dra7xx->phy_count;

 while (phy_count--) {
  phy_power_off(dra7xx->phy[phy_count]);
  phy_exit(dra7xx->phy[phy_count]);
 }
}
