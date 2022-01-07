
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;


 int PHYCTRL_PDB_PWR_OFF ;
 int rockchip_emmc_phy_power (struct phy*,int ) ;

__attribute__((used)) static int rockchip_emmc_phy_power_off(struct phy *phy)
{

 return rockchip_emmc_phy_power(phy, PHYCTRL_PDB_PWR_OFF);
}
