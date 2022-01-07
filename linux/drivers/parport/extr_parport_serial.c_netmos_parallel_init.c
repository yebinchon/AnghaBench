
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ device; scalar_t__ subsystem_vendor; int subsystem_device; } ;
struct parport_pc_pci {int numports; int addr; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 scalar_t__ PCI_DEVICE_ID_NETMOS_9835 ;
 scalar_t__ PCI_DEVICE_ID_NETMOS_9912 ;
 scalar_t__ PCI_VENDOR_ID_IBM ;

__attribute__((used)) static int netmos_parallel_init(struct pci_dev *dev, struct parport_pc_pci *par,
    int autoirq, int autodma)
{

 if (dev->device == PCI_DEVICE_ID_NETMOS_9835 &&
   dev->subsystem_vendor == PCI_VENDOR_ID_IBM &&
   dev->subsystem_device == 0x0299)
  return -ENODEV;

 if (dev->device == PCI_DEVICE_ID_NETMOS_9912) {
  par->numports = 1;
 } else {





  par->numports = (dev->subsystem_device & 0xf0) >> 4;
  if (par->numports > ARRAY_SIZE(par->addr))
   par->numports = ARRAY_SIZE(par->addr);
 }

 return 0;
}
