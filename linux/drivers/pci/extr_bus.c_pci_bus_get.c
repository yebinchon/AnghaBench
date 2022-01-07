
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dev; } ;


 int get_device (int *) ;

struct pci_bus *pci_bus_get(struct pci_bus *bus)
{
 if (bus)
  get_device(&bus->dev);
 return bus;
}
