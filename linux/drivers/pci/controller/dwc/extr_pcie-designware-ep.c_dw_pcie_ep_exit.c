
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_epc {TYPE_1__* mem; } ;
struct dw_pcie_ep {int msi_mem; int msi_mem_phys; struct pci_epc* epc; } ;
struct TYPE_2__ {int page_size; } ;


 int pci_epc_mem_exit (struct pci_epc*) ;
 int pci_epc_mem_free_addr (struct pci_epc*,int ,int ,int ) ;

void dw_pcie_ep_exit(struct dw_pcie_ep *ep)
{
 struct pci_epc *epc = ep->epc;

 pci_epc_mem_free_addr(epc, ep->msi_mem_phys, ep->msi_mem,
         epc->mem->page_size);

 pci_epc_mem_exit(epc);
}
