
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_lock_rescan_remove () ;
 int pci_stop_and_remove_bus_device (struct pci_dev*) ;
 int pci_unlock_rescan_remove () ;

void pci_stop_and_remove_bus_device_locked(struct pci_dev *dev)
{
 pci_lock_rescan_remove();
 pci_stop_and_remove_bus_device(dev);
 pci_unlock_rescan_remove();
}
