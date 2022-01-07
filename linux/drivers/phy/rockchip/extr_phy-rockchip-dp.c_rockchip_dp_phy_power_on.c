
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;


 int rockchip_set_phy_state (struct phy*,int) ;

__attribute__((used)) static int rockchip_dp_phy_power_on(struct phy *phy)
{
 return rockchip_set_phy_state(phy, 1);
}
