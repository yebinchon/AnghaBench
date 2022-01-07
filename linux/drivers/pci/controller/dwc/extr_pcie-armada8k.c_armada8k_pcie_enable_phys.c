
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct armada8k_pcie {int * phy; int phy_count; } ;


 int ARMADA8K_PCIE_MAX_LANES ;
 int PHY_MODE_PCIE ;
 int phy_exit (int ) ;
 int phy_init (int ) ;
 int phy_power_on (int ) ;
 int phy_set_mode_ext (int ,int ,int ) ;

__attribute__((used)) static int armada8k_pcie_enable_phys(struct armada8k_pcie *pcie)
{
 int ret;
 int i;

 for (i = 0; i < ARMADA8K_PCIE_MAX_LANES; i++) {
  ret = phy_init(pcie->phy[i]);
  if (ret)
   return ret;

  ret = phy_set_mode_ext(pcie->phy[i], PHY_MODE_PCIE,
           pcie->phy_count);
  if (ret) {
   phy_exit(pcie->phy[i]);
   return ret;
  }

  ret = phy_power_on(pcie->phy[i]);
  if (ret) {
   phy_exit(pcie->phy[i]);
   return ret;
  }
 }

 return 0;
}
