
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rockchip_pcie {int dummy; } ;


 int PCIE_RC_CONFIG_LCS ;
 int PCI_EXP_LNKCTL_LABIE ;
 int PCI_EXP_LNKCTL_LBMIE ;
 int rockchip_pcie_read (struct rockchip_pcie*,int ) ;
 int rockchip_pcie_write (struct rockchip_pcie*,int,int ) ;

__attribute__((used)) static void rockchip_pcie_enable_bw_int(struct rockchip_pcie *rockchip)
{
 u32 status;

 status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_LCS);
 status |= (PCI_EXP_LNKCTL_LBMIE | PCI_EXP_LNKCTL_LABIE);
 rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_LCS);
}
