
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dra7xx_pcie {int phy_count; int * phy; } ;


 int PHY_MODE_PCIE ;
 int phy_exit (int ) ;
 int phy_init (int ) ;
 int phy_power_off (int ) ;
 int phy_power_on (int ) ;
 int phy_set_mode (int ,int ) ;

__attribute__((used)) static int dra7xx_pcie_enable_phy(struct dra7xx_pcie *dra7xx)
{
 int phy_count = dra7xx->phy_count;
 int ret;
 int i;

 for (i = 0; i < phy_count; i++) {
  ret = phy_set_mode(dra7xx->phy[i], PHY_MODE_PCIE);
  if (ret < 0)
   goto err_phy;

  ret = phy_init(dra7xx->phy[i]);
  if (ret < 0)
   goto err_phy;

  ret = phy_power_on(dra7xx->phy[i]);
  if (ret < 0) {
   phy_exit(dra7xx->phy[i]);
   goto err_phy;
  }
 }

 return 0;

err_phy:
 while (--i >= 0) {
  phy_power_off(dra7xx->phy[i]);
  phy_exit(dra7xx->phy[i]);
 }

 return ret;
}
