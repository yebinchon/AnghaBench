
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int device_release_driver (int *) ;
 int pci_dev_assign_added (struct pci_dev*,int) ;
 scalar_t__ pci_dev_is_added (struct pci_dev*) ;
 int pci_pme_active (struct pci_dev*,int) ;
 int pci_proc_detach_device (struct pci_dev*) ;
 int pci_remove_sysfs_dev_files (struct pci_dev*) ;

__attribute__((used)) static void pci_stop_dev(struct pci_dev *dev)
{
 pci_pme_active(dev, 0);

 if (pci_dev_is_added(dev)) {
  device_release_driver(&dev->dev);
  pci_proc_detach_device(dev);
  pci_remove_sysfs_dev_files(dev);

  pci_dev_assign_added(dev, 0);
 }
}
