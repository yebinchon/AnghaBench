
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {scalar_t__ size; } ;
typedef int ssize_t ;
typedef size_t loff_t ;


 int kobj_to_dev (struct kobject*) ;
 int pci_write_vpd (struct pci_dev*,size_t,size_t,char*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static ssize_t write_vpd_attr(struct file *filp, struct kobject *kobj,
         struct bin_attribute *bin_attr, char *buf,
         loff_t off, size_t count)
{
 struct pci_dev *dev = to_pci_dev(kobj_to_dev(kobj));

 if (bin_attr->size > 0) {
  if (off > bin_attr->size)
   count = 0;
  else if (count > bin_attr->size - off)
   count = bin_attr->size - off;
 }

 return pci_write_vpd(dev, off, count, buf);
}
