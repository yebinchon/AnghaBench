
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct pcie_port {TYPE_1__* mem; } ;
struct keystone_pcie {int num_viewport; scalar_t__ is_am6; struct dw_pcie* pci; } ;
struct dw_pcie {struct pcie_port pp; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;


 int CMD_STATUS ;
 int OB_ENABLEN ;
 int OB_OFFSET_HI (int) ;
 int OB_OFFSET_INDEX (int) ;
 int OB_SIZE ;
 scalar_t__ OB_WIN_SIZE ;
 int OB_XLAT_EN_VAL ;
 int PCI_BASE_ADDRESS_0 ;
 int PCI_BASE_ADDRESS_1 ;
 int dw_pcie_writel_dbi (struct dw_pcie*,int ,int ) ;
 int ilog2 (scalar_t__) ;
 int ks_pcie_app_readl (struct keystone_pcie*,int ) ;
 int ks_pcie_app_writel (struct keystone_pcie*,int ,int) ;
 int ks_pcie_clear_dbi_mode (struct keystone_pcie*) ;
 int ks_pcie_set_dbi_mode (struct keystone_pcie*) ;
 int lower_32_bits (scalar_t__) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void ks_pcie_setup_rc_app_regs(struct keystone_pcie *ks_pcie)
{
 u32 val;
 u32 num_viewport = ks_pcie->num_viewport;
 struct dw_pcie *pci = ks_pcie->pci;
 struct pcie_port *pp = &pci->pp;
 u64 start = pp->mem->start;
 u64 end = pp->mem->end;
 int i;


 ks_pcie_set_dbi_mode(ks_pcie);
 dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_0, 0);
 dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_1, 0);
 ks_pcie_clear_dbi_mode(ks_pcie);

 if (ks_pcie->is_am6)
  return;

 val = ilog2(OB_WIN_SIZE);
 ks_pcie_app_writel(ks_pcie, OB_SIZE, val);


 for (i = 0; i < num_viewport && (start < end); i++) {
  ks_pcie_app_writel(ks_pcie, OB_OFFSET_INDEX(i),
       lower_32_bits(start) | OB_ENABLEN);
  ks_pcie_app_writel(ks_pcie, OB_OFFSET_HI(i),
       upper_32_bits(start));
  start += OB_WIN_SIZE;
 }

 val = ks_pcie_app_readl(ks_pcie, CMD_STATUS);
 val |= OB_XLAT_EN_VAL;
 ks_pcie_app_writel(ks_pcie, CMD_STATUS, val);
}
