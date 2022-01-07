
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rockchip_pcie {int dummy; } ;


 int PCIE_CORE_TXCREDIT_CFG1 ;
 int PCIE_CORE_TXCREDIT_CFG1_MUI_ENCODE (int) ;
 int PCIE_CORE_TXCREDIT_CFG1_MUI_MASK ;
 int rockchip_pcie_read (struct rockchip_pcie*,int ) ;
 int rockchip_pcie_write (struct rockchip_pcie*,int ,int ) ;

__attribute__((used)) static void rockchip_pcie_update_txcredit_mui(struct rockchip_pcie *rockchip)
{
 u32 val;


 val = rockchip_pcie_read(rockchip, PCIE_CORE_TXCREDIT_CFG1);
 val &= ~PCIE_CORE_TXCREDIT_CFG1_MUI_MASK;
 val |= PCIE_CORE_TXCREDIT_CFG1_MUI_ENCODE(24000);
 rockchip_pcie_write(rockchip, val, PCIE_CORE_TXCREDIT_CFG1);
}
