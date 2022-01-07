
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; int pme_support; struct pci_bus* bus; } ;
struct pci_bus {int * bridge; struct pci_bus* parent; struct pci_dev* self; } ;


 int device_can_wakeup (int *) ;
 int pci_pme_capable (struct pci_dev*,int ) ;
 int pci_target_state (struct pci_dev*,int) ;

bool pci_dev_run_wake(struct pci_dev *dev)
{
 struct pci_bus *bus = dev->bus;

 if (!dev->pme_support)
  return 0;


 if (!pci_pme_capable(dev, pci_target_state(dev, 1)))
  return 0;

 if (device_can_wakeup(&dev->dev))
  return 1;

 while (bus->parent) {
  struct pci_dev *bridge = bus->self;

  if (device_can_wakeup(&bridge->dev))
   return 1;

  bus = bus->parent;
 }


 if (bus->bridge)
  return device_can_wakeup(bus->bridge);

 return 0;
}
