
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int device; int irq; } ;
struct mgsl_struct {int phys_lcr_base; int lcr_offset; int io_addr_size; int misc_ctrl_value; int hw_version; int irq_flags; int bus_type; void* phys_memory_base; int irq_level; void* io_base; } ;


 int EIO ;
 int IRQF_SHARED ;
 int MGSL_BUS_TYPE_PCI ;
 int PAGE_SIZE ;
 int mgsl_add_device (struct mgsl_struct*) ;
 struct mgsl_struct* mgsl_allocate_device () ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 void* pci_resource_start (struct pci_dev*,int) ;
 int printk (char*,...) ;

__attribute__((used)) static int synclink_init_one (struct pci_dev *dev,
     const struct pci_device_id *ent)
{
 struct mgsl_struct *info;

 if (pci_enable_device(dev)) {
  printk("error enabling pci device %p\n", dev);
  return -EIO;
 }

 info = mgsl_allocate_device();
 if (!info) {
  printk("can't allocate device instance data.\n");
  return -EIO;
 }



 info->io_base = pci_resource_start(dev, 2);
 info->irq_level = dev->irq;
 info->phys_memory_base = pci_resource_start(dev, 3);





 info->phys_lcr_base = pci_resource_start(dev, 0);
 info->lcr_offset = info->phys_lcr_base & (PAGE_SIZE-1);
 info->phys_lcr_base &= ~(PAGE_SIZE-1);

 info->bus_type = MGSL_BUS_TYPE_PCI;
 info->io_addr_size = 8;
 info->irq_flags = IRQF_SHARED;

 if (dev->device == 0x0210) {

  info->misc_ctrl_value = 0x007c4080;
  info->hw_version = 1;
 } else {





  info->misc_ctrl_value = 0x087e4546;
  info->hw_version = 0;
 }

 mgsl_add_device(info);

 return 0;
}
