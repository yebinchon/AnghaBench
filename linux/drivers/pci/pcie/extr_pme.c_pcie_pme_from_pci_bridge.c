
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_dev {int dummy; } ;
struct pci_bus {int self; } ;


 scalar_t__ PCI_EXP_TYPE_PCI_BRIDGE ;
 int down_read (int *) ;
 int pci_bus_sem ;
 struct pci_dev* pci_dev_get (int ) ;
 int pci_dev_put (struct pci_dev*) ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;
 scalar_t__ pcie_pme_walk_bus (struct pci_bus*) ;
 int up_read (int *) ;

__attribute__((used)) static bool pcie_pme_from_pci_bridge(struct pci_bus *bus, u8 devfn)
{
 struct pci_dev *dev;
 bool found = 0;

 if (devfn)
  return 0;

 dev = pci_dev_get(bus->self);
 if (!dev)
  return 0;

 if (pci_is_pcie(dev) && pci_pcie_type(dev) == PCI_EXP_TYPE_PCI_BRIDGE) {
  down_read(&pci_bus_sem);
  if (pcie_pme_walk_bus(bus))
   found = 1;
  up_read(&pci_bus_sem);
 }

 pci_dev_put(dev);
 return found;
}
