
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int self; } ;


 int ENOTTY ;
 int might_sleep () ;
 int pci_bridge_secondary_bus_reset (int ) ;
 int pci_bus_lock (struct pci_bus*) ;
 int pci_bus_resetable (struct pci_bus*) ;
 int pci_bus_unlock (struct pci_bus*) ;

__attribute__((used)) static int pci_bus_reset(struct pci_bus *bus, int probe)
{
 int ret;

 if (!bus->self || !pci_bus_resetable(bus))
  return -ENOTTY;

 if (probe)
  return 0;

 pci_bus_lock(bus);

 might_sleep();

 ret = pci_bridge_secondary_bus_reset(bus->self);

 pci_bus_unlock(bus);

 return ret;
}
