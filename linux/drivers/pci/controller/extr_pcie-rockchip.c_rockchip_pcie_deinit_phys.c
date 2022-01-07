
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pcie {int lanes_map; int * phys; } ;


 int BIT (int) ;
 int MAX_LANE_NUM ;
 int phy_exit (int ) ;
 int phy_power_off (int ) ;

void rockchip_pcie_deinit_phys(struct rockchip_pcie *rockchip)
{
 int i;

 for (i = 0; i < MAX_LANE_NUM; i++) {

  if (rockchip->lanes_map & BIT(i))
   phy_power_off(rockchip->phys[i]);
  phy_exit(rockchip->phys[i]);
 }
}
