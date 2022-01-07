
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; scalar_t__ reset_fn; } ;


 int dev_attr_reset ;
 int device_create_file (int *,int *) ;
 int pcie_aspm_create_sysfs_dev_files (struct pci_dev*) ;
 int pcie_aspm_remove_sysfs_dev_files (struct pci_dev*) ;
 int pcie_vpd_create_sysfs_dev_files (struct pci_dev*) ;
 int pcie_vpd_remove_sysfs_dev_files (struct pci_dev*) ;

__attribute__((used)) static int pci_create_capabilities_sysfs(struct pci_dev *dev)
{
 int retval;

 pcie_vpd_create_sysfs_dev_files(dev);
 pcie_aspm_create_sysfs_dev_files(dev);

 if (dev->reset_fn) {
  retval = device_create_file(&dev->dev, &dev_attr_reset);
  if (retval)
   goto error;
 }
 return 0;

error:
 pcie_aspm_remove_sysfs_dev_files(dev);
 pcie_vpd_remove_sysfs_dev_files(dev);
 return retval;
}
