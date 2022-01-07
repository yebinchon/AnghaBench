
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;


 int PHY_CTRL ;
 int PHY_CTRL_PHY_PWDN ;
 int rcar_gen3_phy_pcie_modify_reg (struct phy*,int ,int ,int ) ;

__attribute__((used)) static int r8a77980_phy_pcie_power_on(struct phy *p)
{

 rcar_gen3_phy_pcie_modify_reg(p, PHY_CTRL, PHY_CTRL_PHY_PWDN, 0);

 return 0;
}
