
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
 int PCI_MSI_FLAGS_ENABLE ;
 int PCI_MSI_FLAGS_QSIZE ;
 int dw_pcie_readw_dbi (struct dw_pcie*,int) ;
 struct dw_pcie_ep* epc_get_drvdata (struct pci_epc*) ;
 struct dw_pcie* to_dw_pcie_from_ep (struct dw_pcie_ep*) ;

__attribute__((used)) static int dw_pcie_ep_get_msi(struct pci_epc *epc, u8 func_no)
{
 struct dw_pcie_ep *ep = epc_get_drvdata(epc);
 struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 u32 val, reg;

 if (!ep->msi_cap)
  return -EINVAL;

 reg = ep->msi_cap + PCI_MSI_FLAGS;
 val = dw_pcie_readw_dbi(pci, reg);
 if (!(val & PCI_MSI_FLAGS_ENABLE))
  return -EINVAL;

 val = (val & PCI_MSI_FLAGS_QSIZE) >> 4;

 return val;
}
