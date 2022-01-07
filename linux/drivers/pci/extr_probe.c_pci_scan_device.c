
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int devfn; int vendor; int device; int bus; } ;
struct pci_bus {int dummy; } ;


 int kfree (struct pci_dev*) ;
 struct pci_dev* pci_alloc_dev (struct pci_bus*) ;
 int pci_bus_put (int ) ;
 int pci_bus_read_dev_vendor_id (struct pci_bus*,int,int*,int) ;
 int pci_set_of_node (struct pci_dev*) ;
 scalar_t__ pci_setup_device (struct pci_dev*) ;

__attribute__((used)) static struct pci_dev *pci_scan_device(struct pci_bus *bus, int devfn)
{
 struct pci_dev *dev;
 u32 l;

 if (!pci_bus_read_dev_vendor_id(bus, devfn, &l, 60*1000))
  return ((void*)0);

 dev = pci_alloc_dev(bus);
 if (!dev)
  return ((void*)0);

 dev->devfn = devfn;
 dev->vendor = l & 0xffff;
 dev->device = (l >> 16) & 0xffff;

 pci_set_of_node(dev);

 if (pci_setup_device(dev)) {
  pci_bus_put(dev->bus);
  kfree(dev);
  return ((void*)0);
 }

 return dev;
}
