
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct keystone_pcie {int dummy; } ;
struct dw_pcie {int dummy; } ;


 int CMD_STATUS ;
 int LTSSM_EN_VAL ;
 int ks_pcie_app_readl (struct keystone_pcie*,int ) ;
 int ks_pcie_app_writel (struct keystone_pcie*,int ,int) ;
 struct keystone_pcie* to_keystone_pcie (struct dw_pcie*) ;

__attribute__((used)) static void ks_pcie_stop_link(struct dw_pcie *pci)
{
 struct keystone_pcie *ks_pcie = to_keystone_pcie(pci);
 u32 val;


 val = ks_pcie_app_readl(ks_pcie, CMD_STATUS);
 val &= ~LTSSM_EN_VAL;
 ks_pcie_app_writel(ks_pcie, CMD_STATUS, LTSSM_EN_VAL | val);
}
