
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {size_t driver_data; } ;
struct TYPE_2__ {int size; int virtual; void* physical; } ;
struct i810fb_par {int mmio_start_virtual; void* mmio_start_phys; int res_flags; TYPE_1__ aperture; int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int FRAMEBUFFER_REQ ;
 int MMIO_REQ ;
 int MMIO_SIZE ;
 int PCI_DEVICE_ENABLED ;
 int * i810_pci_list ;
 int ioremap_nocache (void*,int) ;
 int ioremap_wc (void*,int) ;
 int pci_enable_device (int ) ;
 int pci_resource_len (int ,int) ;
 void* pci_resource_start (int ,int) ;
 int printk (char*) ;
 int request_mem_region (void*,int,int ) ;

__attribute__((used)) static int i810_allocate_pci_resource(struct i810fb_par *par,
          const struct pci_device_id *entry)
{
 int err;

 if ((err = pci_enable_device(par->dev))) {
  printk("i810fb_init: cannot enable device\n");
  return err;
 }
 par->res_flags |= PCI_DEVICE_ENABLED;

 if (pci_resource_len(par->dev, 0) > 512 * 1024) {
  par->aperture.physical = pci_resource_start(par->dev, 0);
  par->aperture.size = pci_resource_len(par->dev, 0);
  par->mmio_start_phys = pci_resource_start(par->dev, 1);
 } else {
  par->aperture.physical = pci_resource_start(par->dev, 1);
  par->aperture.size = pci_resource_len(par->dev, 1);
  par->mmio_start_phys = pci_resource_start(par->dev, 0);
 }
 if (!par->aperture.size) {
  printk("i810fb_init: device is disabled\n");
  return -ENOMEM;
 }

 if (!request_mem_region(par->aperture.physical,
    par->aperture.size,
    i810_pci_list[entry->driver_data])) {
  printk("i810fb_init: cannot request framebuffer region\n");
  return -ENODEV;
 }
 par->res_flags |= FRAMEBUFFER_REQ;

 par->aperture.virtual = ioremap_wc(par->aperture.physical,
        par->aperture.size);
 if (!par->aperture.virtual) {
  printk("i810fb_init: cannot remap framebuffer region\n");
  return -ENODEV;
 }

 if (!request_mem_region(par->mmio_start_phys,
    MMIO_SIZE,
    i810_pci_list[entry->driver_data])) {
  printk("i810fb_init: cannot request mmio region\n");
  return -ENODEV;
 }
 par->res_flags |= MMIO_REQ;

 par->mmio_start_virtual = ioremap_nocache(par->mmio_start_phys,
        MMIO_SIZE);
 if (!par->mmio_start_virtual) {
  printk("i810fb_init: cannot remap mmio region\n");
  return -ENODEV;
 }

 return 0;
}
