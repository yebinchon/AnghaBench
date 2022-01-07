
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct armada8k_pcie {int * phy; } ;


 int ARMADA8K_PCIE_MAX_LANES ;
 int phy_exit (int ) ;
 int phy_power_off (int ) ;

__attribute__((used)) static void armada8k_pcie_disable_phys(struct armada8k_pcie *pcie)
{
 int i;

 for (i = 0; i < ARMADA8K_PCIE_MAX_LANES; i++) {
  phy_power_off(pcie->phy[i]);
  phy_exit(pcie->phy[i]);
 }
}
