
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct pci_bus {struct pci_dev* self; } ;


 int PCI_SCAN_ALL_PCIE_DEVS ;
 scalar_t__ pci_has_flag (int ) ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pcie_downstream_port (struct pci_dev*) ;

__attribute__((used)) static int only_one_child(struct pci_bus *bus)
{
 struct pci_dev *bridge = bus->self;





 if (pci_has_flag(PCI_SCAN_ALL_PCIE_DEVS))
  return 0;






 if (bridge && pci_is_pcie(bridge) && pcie_downstream_port(bridge))
  return 1;

 return 0;
}
