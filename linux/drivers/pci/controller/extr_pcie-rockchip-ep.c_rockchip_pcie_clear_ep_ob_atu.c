
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rockchip_pcie {int dummy; } ;


 int ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR0 (int ) ;
 int ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR1 (int ) ;
 int ROCKCHIP_PCIE_AT_OB_REGION_DESC0 (int ) ;
 int ROCKCHIP_PCIE_AT_OB_REGION_DESC1 (int ) ;
 int ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR0 (int ) ;
 int ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR1 (int ) ;
 int rockchip_pcie_write (struct rockchip_pcie*,int ,int ) ;

__attribute__((used)) static void rockchip_pcie_clear_ep_ob_atu(struct rockchip_pcie *rockchip,
       u32 region)
{
 rockchip_pcie_write(rockchip, 0,
       ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR0(region));
 rockchip_pcie_write(rockchip, 0,
       ROCKCHIP_PCIE_AT_OB_REGION_PCI_ADDR1(region));
 rockchip_pcie_write(rockchip, 0,
       ROCKCHIP_PCIE_AT_OB_REGION_DESC0(region));
 rockchip_pcie_write(rockchip, 0,
       ROCKCHIP_PCIE_AT_OB_REGION_DESC1(region));
 rockchip_pcie_write(rockchip, 0,
       ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR0(region));
 rockchip_pcie_write(rockchip, 0,
       ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR1(region));
}
