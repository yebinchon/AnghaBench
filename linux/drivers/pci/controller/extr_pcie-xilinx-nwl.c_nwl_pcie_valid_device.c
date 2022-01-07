
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {scalar_t__ number; struct nwl_pcie* sysdata; } ;
struct nwl_pcie {scalar_t__ root_busno; } ;


 int nwl_pcie_link_up (struct nwl_pcie*) ;

__attribute__((used)) static bool nwl_pcie_valid_device(struct pci_bus *bus, unsigned int devfn)
{
 struct nwl_pcie *pcie = bus->sysdata;


 if (bus->number != pcie->root_busno) {
  if (!nwl_pcie_link_up(pcie))
   return 0;
 }


 if (bus->number == pcie->root_busno && devfn > 0)
  return 0;

 return 1;
}
