
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epc {int dummy; } ;
struct dw_pcie_ep {struct pci_epc* epc; } ;


 int pci_epc_linkup (struct pci_epc*) ;

void dw_pcie_ep_linkup(struct dw_pcie_ep *ep)
{
 struct pci_epc *epc = ep->epc;

 pci_epc_linkup(epc);
}
