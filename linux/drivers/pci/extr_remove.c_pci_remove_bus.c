
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_bus {int dev; TYPE_1__* ops; int node; } ;
struct TYPE_2__ {int (* remove_bus ) (struct pci_bus*) ;} ;


 int device_unregister (int *) ;
 int down_write (int *) ;
 int list_del (int *) ;
 int pci_bus_release_busn_res (struct pci_bus*) ;
 int pci_bus_sem ;
 int pci_proc_detach_bus (struct pci_bus*) ;
 int pci_remove_legacy_files (struct pci_bus*) ;
 int pcibios_remove_bus (struct pci_bus*) ;
 int stub1 (struct pci_bus*) ;
 int up_write (int *) ;

void pci_remove_bus(struct pci_bus *bus)
{
 pci_proc_detach_bus(bus);

 down_write(&pci_bus_sem);
 list_del(&bus->node);
 pci_bus_release_busn_res(bus);
 up_write(&pci_bus_sem);
 pci_remove_legacy_files(bus);

 if (bus->ops->remove_bus)
  bus->ops->remove_bus(bus);

 pcibios_remove_bus(bus);
 device_unregister(&bus->dev);
}
