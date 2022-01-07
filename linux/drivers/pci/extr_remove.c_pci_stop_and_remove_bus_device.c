
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_remove_bus_device (struct pci_dev*) ;
 int pci_stop_bus_device (struct pci_dev*) ;

void pci_stop_and_remove_bus_device(struct pci_dev *dev)
{
 pci_stop_bus_device(dev);
 pci_remove_bus_device(dev);
}
