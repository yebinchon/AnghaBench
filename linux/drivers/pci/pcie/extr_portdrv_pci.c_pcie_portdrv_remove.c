
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 scalar_t__ pci_bridge_d3_possible (struct pci_dev*) ;
 int pcie_port_device_remove (struct pci_dev*) ;
 int pm_runtime_dont_use_autosuspend (int *) ;
 int pm_runtime_forbid (int *) ;
 int pm_runtime_get_noresume (int *) ;

__attribute__((used)) static void pcie_portdrv_remove(struct pci_dev *dev)
{
 if (pci_bridge_d3_possible(dev)) {
  pm_runtime_forbid(&dev->dev);
  pm_runtime_get_noresume(&dev->dev);
  pm_runtime_dont_use_autosuspend(&dev->dev);
 }

 pcie_port_device_remove(dev);
}
