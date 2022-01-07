
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;


 int PCI_BASE_ADDRESS_0 ;
 scalar_t__ pci_is_root_bus (struct pci_bus*) ;

__attribute__((used)) static bool altera_pcie_hide_rc_bar(struct pci_bus *bus, unsigned int devfn,
        int offset)
{
 if (pci_is_root_bus(bus) && (devfn == 0) &&
     (offset == PCI_BASE_ADDRESS_0))
  return 1;

 return 0;
}
