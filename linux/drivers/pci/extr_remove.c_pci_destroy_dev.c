
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {TYPE_1__ kobj; } ;
struct pci_dev {TYPE_2__ dev; int bus_list; } ;


 int device_del (TYPE_2__*) ;
 int down_write (int *) ;
 int list_del (int *) ;
 int pci_bridge_d3_update (struct pci_dev*) ;
 int pci_bus_sem ;
 int pci_free_resources (struct pci_dev*) ;
 int pcie_aspm_exit_link_state (struct pci_dev*) ;
 int put_device (TYPE_2__*) ;
 int up_write (int *) ;

__attribute__((used)) static void pci_destroy_dev(struct pci_dev *dev)
{
 if (!dev->dev.kobj.parent)
  return;

 device_del(&dev->dev);

 down_write(&pci_bus_sem);
 list_del(&dev->bus_list);
 up_write(&pci_bus_sem);

 pcie_aspm_exit_link_state(dev);
 pci_bridge_d3_update(dev);
 pci_free_resources(dev);
 put_device(&dev->dev);
}
