
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_epc {int dummy; } ;
struct dw_pcie_ep {int msi_cap; } ;
struct dw_pcie {int dummy; } ;


 int EINVAL ;
 int PCI_MSI_FLAGS ;
 int PCI_MSI_FLAGS_QMASK ;
 int dw_pcie_dbi_ro_wr_dis (struct dw_pcie*) ;
 int dw_pcie_dbi_ro_wr_en (struct dw_pcie*) ;
 int dw_pcie_readw_dbi (struct dw_pcie*,int) ;
 int dw_pcie_writew_dbi (struct dw_pcie*,int,int) ;
 struct dw_pcie_ep* epc_get_drvdata (struct pci_epc*) ;
 struct dw_pcie* to_dw_pcie_from_ep (struct dw_pcie_ep*) ;

__attribute__((used)) static int dw_pcie_ep_set_msi(struct pci_epc *epc, u8 func_no, u8 interrupts)
{
 struct dw_pcie_ep *ep = epc_get_drvdata(epc);
 struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 u32 val, reg;

 if (!ep->msi_cap)
  return -EINVAL;

 reg = ep->msi_cap + PCI_MSI_FLAGS;
 val = dw_pcie_readw_dbi(pci, reg);
 val &= ~PCI_MSI_FLAGS_QMASK;
 val |= (interrupts << 1) & PCI_MSI_FLAGS_QMASK;
 dw_pcie_dbi_ro_wr_en(pci);
 dw_pcie_writew_dbi(pci, reg, val);
 dw_pcie_dbi_ro_wr_dis(pci);

 return 0;
}
