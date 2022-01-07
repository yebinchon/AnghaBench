
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct pci_dev {TYPE_2__* vpd; TYPE_1__ dev; } ;
struct TYPE_4__ {scalar_t__ attr; } ;


 int kfree (scalar_t__) ;
 int sysfs_remove_bin_file (int *,scalar_t__) ;

void pcie_vpd_remove_sysfs_dev_files(struct pci_dev *dev)
{
 if (dev->vpd && dev->vpd->attr) {
  sysfs_remove_bin_file(&dev->dev.kobj, dev->vpd->attr);
  kfree(dev->vpd->attr);
 }
}
