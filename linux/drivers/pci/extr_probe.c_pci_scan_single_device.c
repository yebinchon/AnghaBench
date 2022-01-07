
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct pci_bus {int dummy; } ;


 int pci_dev_put (struct pci_dev*) ;
 int pci_device_add (struct pci_dev*,struct pci_bus*) ;
 struct pci_dev* pci_get_slot (struct pci_bus*,int) ;
 struct pci_dev* pci_scan_device (struct pci_bus*,int) ;

struct pci_dev *pci_scan_single_device(struct pci_bus *bus, int devfn)
{
 struct pci_dev *dev;

 dev = pci_get_slot(bus, devfn);
 if (dev) {
  pci_dev_put(dev);
  return dev;
 }

 dev = pci_scan_device(bus, devfn);
 if (!dev)
  return ((void*)0);

 pci_device_add(dev, bus);

 return dev;
}
