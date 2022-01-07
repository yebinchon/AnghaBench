
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int subsystem_device; int device; scalar_t__ subsystem_vendor; } ;


 int ENODEV ;
 int PCI_DEVICE_ID_NETMOS_9865 ;

 int PCI_DEVICE_ID_NETMOS_9901 ;



 scalar_t__ PCI_VENDOR_ID_IBM ;
 int moan_device (char*,struct pci_dev*) ;
 unsigned int pci_netmos_9900_numports (struct pci_dev*) ;

__attribute__((used)) static int pci_netmos_init(struct pci_dev *dev)
{

 unsigned int num_serial = dev->subsystem_device & 0xf;

 if ((dev->device == PCI_DEVICE_ID_NETMOS_9901) ||
  (dev->device == PCI_DEVICE_ID_NETMOS_9865))
  return 0;

 if (dev->subsystem_vendor == PCI_VENDOR_ID_IBM &&
   dev->subsystem_device == 0x0299)
  return 0;

 switch (dev->device) {
 case 130:
 case 129:
 case 128:
 case 131:
  num_serial = pci_netmos_9900_numports(dev);
  break;

 default:
  break;
 }

 if (num_serial == 0) {
  moan_device("unknown NetMos/Mostech device", dev);
  return -ENODEV;
 }

 return num_serial;
}
