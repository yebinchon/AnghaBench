
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int multifunction; } ;
struct pci_bus {scalar_t__ self; } ;


 unsigned int next_fn (struct pci_bus*,struct pci_dev*,unsigned int) ;
 scalar_t__ only_one_child (struct pci_bus*) ;
 int pci_dev_is_added (struct pci_dev*) ;
 struct pci_dev* pci_scan_single_device (struct pci_bus*,int) ;
 int pcie_aspm_init_link_state (scalar_t__) ;

int pci_scan_slot(struct pci_bus *bus, int devfn)
{
 unsigned fn, nr = 0;
 struct pci_dev *dev;

 if (only_one_child(bus) && (devfn > 0))
  return 0;

 dev = pci_scan_single_device(bus, devfn);
 if (!dev)
  return 0;
 if (!pci_dev_is_added(dev))
  nr++;

 for (fn = next_fn(bus, dev, 0); fn > 0; fn = next_fn(bus, dev, fn)) {
  dev = pci_scan_single_device(bus, devfn + fn);
  if (dev) {
   if (!pci_dev_is_added(dev))
    nr++;
   dev->multifunction = 1;
  }
 }


 if (bus->self && nr)
  pcie_aspm_init_link_state(bus->self);

 return nr;
}
