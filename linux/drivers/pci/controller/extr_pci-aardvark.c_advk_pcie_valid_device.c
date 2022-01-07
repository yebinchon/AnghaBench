
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {scalar_t__ number; } ;
struct advk_pcie {scalar_t__ root_bus_nr; } ;


 scalar_t__ PCI_SLOT (int) ;

__attribute__((used)) static bool advk_pcie_valid_device(struct advk_pcie *pcie, struct pci_bus *bus,
      int devfn)
{
 if ((bus->number == pcie->root_bus_nr) && PCI_SLOT(devfn) != 0)
  return 0;

 return 1;
}
