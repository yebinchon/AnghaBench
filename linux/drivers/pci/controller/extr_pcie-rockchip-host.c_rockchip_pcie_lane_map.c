
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rockchip_pcie {scalar_t__ legacy_phy; } ;


 int GENMASK (scalar_t__,int ) ;
 scalar_t__ MAX_LANE_NUM ;
 int PCIE_CORE_LANE_MAP ;
 int PCIE_CORE_LANE_MAP_MASK ;
 int PCIE_CORE_LANE_MAP_REVERSE ;
 int bitrev8 (int) ;
 int rockchip_pcie_read (struct rockchip_pcie*,int ) ;

__attribute__((used)) static u8 rockchip_pcie_lane_map(struct rockchip_pcie *rockchip)
{
 u32 val;
 u8 map;

 if (rockchip->legacy_phy)
  return GENMASK(MAX_LANE_NUM - 1, 0);

 val = rockchip_pcie_read(rockchip, PCIE_CORE_LANE_MAP);
 map = val & PCIE_CORE_LANE_MAP_MASK;


 if (val & PCIE_CORE_LANE_MAP_REVERSE)
  map = bitrev8(map) >> 4;

 return map;
}
