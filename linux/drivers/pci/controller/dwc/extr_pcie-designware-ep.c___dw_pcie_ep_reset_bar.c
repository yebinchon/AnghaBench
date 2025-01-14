
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dw_pcie {int dummy; } ;
typedef enum pci_barno { ____Placeholder_pci_barno } pci_barno ;


 scalar_t__ PCI_BASE_ADDRESS_0 ;
 int PCI_BASE_ADDRESS_MEM_TYPE_64 ;
 int dw_pcie_dbi_ro_wr_dis (struct dw_pcie*) ;
 int dw_pcie_dbi_ro_wr_en (struct dw_pcie*) ;
 int dw_pcie_writel_dbi (struct dw_pcie*,scalar_t__,int) ;
 int dw_pcie_writel_dbi2 (struct dw_pcie*,scalar_t__,int) ;

__attribute__((used)) static void __dw_pcie_ep_reset_bar(struct dw_pcie *pci, enum pci_barno bar,
       int flags)
{
 u32 reg;

 reg = PCI_BASE_ADDRESS_0 + (4 * bar);
 dw_pcie_dbi_ro_wr_en(pci);
 dw_pcie_writel_dbi2(pci, reg, 0x0);
 dw_pcie_writel_dbi(pci, reg, 0x0);
 if (flags & PCI_BASE_ADDRESS_MEM_TYPE_64) {
  dw_pcie_writel_dbi2(pci, reg + 4, 0x0);
  dw_pcie_writel_dbi(pci, reg + 4, 0x0);
 }
 dw_pcie_dbi_ro_wr_dis(pci);
}
