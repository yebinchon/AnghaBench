
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct pci_epc {int dummy; } ;
struct cdns_pcie {int dummy; } ;
struct cdns_pcie_ep {struct cdns_pcie pcie; } ;


 scalar_t__ CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET ;
 int EINVAL ;
 scalar_t__ PCI_MSI_FLAGS ;
 int PCI_MSI_FLAGS_ENABLE ;
 int PCI_MSI_FLAGS_QSIZE ;
 int cdns_pcie_ep_fn_readw (struct cdns_pcie*,int ,scalar_t__) ;
 struct cdns_pcie_ep* epc_get_drvdata (struct pci_epc*) ;

__attribute__((used)) static int cdns_pcie_ep_get_msi(struct pci_epc *epc, u8 fn)
{
 struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
 struct cdns_pcie *pcie = &ep->pcie;
 u32 cap = CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET;
 u16 flags, mme;


 flags = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSI_FLAGS);
 if (!(flags & PCI_MSI_FLAGS_ENABLE))
  return -EINVAL;





 mme = (flags & PCI_MSI_FLAGS_QSIZE) >> 4;

 return mme;
}
