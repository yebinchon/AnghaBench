
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epc_mem {struct pci_epc_mem* bitmap; } ;
struct pci_epc {struct pci_epc_mem* mem; } ;


 int kfree (struct pci_epc_mem*) ;

void pci_epc_mem_exit(struct pci_epc *epc)
{
 struct pci_epc_mem *mem = epc->mem;

 epc->mem = ((void*)0);
 kfree(mem->bitmap);
 kfree(mem);
}
