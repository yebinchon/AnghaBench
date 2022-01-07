
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {unsigned int class; scalar_t__ device; int subsystem_device; int dev; } ;


 scalar_t__ PCI_DEVICE_ID_NETMOS_9900 ;
 int dev_err (int *,char*) ;
 int moan_device (char*,struct pci_dev*) ;

__attribute__((used)) static int pci_netmos_9900_numports(struct pci_dev *dev)
{
 unsigned int c = dev->class;
 unsigned int pi;
 unsigned short sub_serports;

 pi = c & 0xff;

 if (pi == 2)
  return 1;

 if ((pi == 0) && (dev->device == PCI_DEVICE_ID_NETMOS_9900)) {






  sub_serports = dev->subsystem_device & 0xf;
  if (sub_serports > 0)
   return sub_serports;

  dev_err(&dev->dev,
   "NetMos/Mostech serial driver ignoring port on ambiguous config.\n");
  return 0;
 }

 moan_device("unknown NetMos/Mostech program interface", dev);
 return 0;
}
