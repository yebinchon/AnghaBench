
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int subsystem_device; int dev; } ;


 int ENODEV ;
 int dev_info (int *,char*,int) ;

__attribute__((used)) static int pci_timedia_probe(struct pci_dev *dev)
{




 if ((dev->subsystem_device & 0x00f0) >= 0x70) {
  dev_info(&dev->dev,
   "ignoring Timedia subdevice %04x for parport_serial\n",
   dev->subsystem_device);
  return -ENODEV;
 }

 return 0;
}
