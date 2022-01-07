
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rockchip_pcie {int dummy; } ;


 int PCIE_CLIENT_INT_CLI ;
 int PCIE_CLIENT_INT_MASK ;
 scalar_t__ PCIE_CORE_INT ;
 int PCIE_CORE_INT_MASK ;
 int rockchip_pcie_enable_bw_int (struct rockchip_pcie*) ;
 int rockchip_pcie_write (struct rockchip_pcie*,int,int ) ;

__attribute__((used)) static void rockchip_pcie_enable_interrupts(struct rockchip_pcie *rockchip)
{
 rockchip_pcie_write(rockchip, (PCIE_CLIENT_INT_CLI << 16) &
       (~PCIE_CLIENT_INT_CLI), PCIE_CLIENT_INT_MASK);
 rockchip_pcie_write(rockchip, (u32)(~PCIE_CORE_INT),
       PCIE_CORE_INT_MASK);

 rockchip_pcie_enable_bw_int(rockchip);
}
