
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rockchip_pcie {scalar_t__ apb_base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 rockchip_pcie_read(struct rockchip_pcie *rockchip, u32 reg)
{
 return readl(rockchip->apb_base + reg);
}
