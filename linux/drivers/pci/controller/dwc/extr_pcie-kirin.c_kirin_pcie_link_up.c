
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kirin_pcie {int dummy; } ;
struct dw_pcie {int dummy; } ;


 int PCIE_APB_PHY_STATUS0 ;
 int PCIE_LINKUP_ENABLE ;
 int kirin_apb_ctrl_readl (struct kirin_pcie*,int ) ;
 struct kirin_pcie* to_kirin_pcie (struct dw_pcie*) ;

__attribute__((used)) static int kirin_pcie_link_up(struct dw_pcie *pci)
{
 struct kirin_pcie *kirin_pcie = to_kirin_pcie(pci);
 u32 val = kirin_apb_ctrl_readl(kirin_pcie, PCIE_APB_PHY_STATUS0);

 if ((val & PCIE_LINKUP_ENABLE) == PCIE_LINKUP_ENABLE)
  return 1;

 return 0;
}
