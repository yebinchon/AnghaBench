
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;


 int EIO ;
 int device_init (int ,struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int printk (char*,struct pci_dev*) ;
 int slgt_device_count ;

__attribute__((used)) static int init_one(struct pci_dev *dev,
         const struct pci_device_id *ent)
{
 if (pci_enable_device(dev)) {
  printk("error enabling pci device %p\n", dev);
  return -EIO;
 }
 pci_set_master(dev);
 device_init(slgt_device_count, dev);
 return 0;
}
