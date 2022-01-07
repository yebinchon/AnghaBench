
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dev; } ;


 int put_device (int *) ;

void pci_bus_put(struct pci_bus *bus)
{
 if (bus)
  put_device(&bus->dev);
}
