
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int kobj; } ;
struct pci_dev {TYPE_3__* vpd; TYPE_2__ dev; } ;
struct TYPE_4__ {char* name; int mode; } ;
struct bin_attribute {int write; int read; TYPE_1__ attr; scalar_t__ size; } ;
struct TYPE_6__ {struct bin_attribute* attr; } ;


 int GFP_ATOMIC ;
 int S_IRUSR ;
 int S_IWUSR ;
 int kfree (struct bin_attribute*) ;
 struct bin_attribute* kzalloc (int,int ) ;
 int read_vpd_attr ;
 int sysfs_bin_attr_init (struct bin_attribute*) ;
 int sysfs_create_bin_file (int *,struct bin_attribute*) ;
 int write_vpd_attr ;

void pcie_vpd_create_sysfs_dev_files(struct pci_dev *dev)
{
 int retval;
 struct bin_attribute *attr;

 if (!dev->vpd)
  return;

 attr = kzalloc(sizeof(*attr), GFP_ATOMIC);
 if (!attr)
  return;

 sysfs_bin_attr_init(attr);
 attr->size = 0;
 attr->attr.name = "vpd";
 attr->attr.mode = S_IRUSR | S_IWUSR;
 attr->read = read_vpd_attr;
 attr->write = write_vpd_attr;
 retval = sysfs_create_bin_file(&dev->dev.kobj, attr);
 if (retval) {
  kfree(attr);
  return;
 }

 dev->vpd->attr = attr;
}
