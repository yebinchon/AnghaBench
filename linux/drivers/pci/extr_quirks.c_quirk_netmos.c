
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int subsystem_device; int device; int class; int subsystem_vendor; } ;


 int PCI_CLASS_COMMUNICATION_OTHER ;





 int PCI_VENDOR_ID_IBM ;
 int pci_info (struct pci_dev*,char*,int,unsigned int,unsigned int) ;

__attribute__((used)) static void quirk_netmos(struct pci_dev *dev)
{
 unsigned int num_parallel = (dev->subsystem_device & 0xf0) >> 4;
 unsigned int num_serial = dev->subsystem_device & 0xf;
 switch (dev->device) {
 case 130:

  if (dev->subsystem_vendor == PCI_VENDOR_ID_IBM &&
    dev->subsystem_device == 0x0299)
   return;

 case 132:
 case 131:
 case 129:
 case 128:
  if (num_parallel) {
   pci_info(dev, "Netmos %04x (%u parallel, %u serial); changing class SERIAL to OTHER (use parport_serial)\n",
    dev->device, num_parallel, num_serial);
   dev->class = (PCI_CLASS_COMMUNICATION_OTHER << 8) |
       (dev->class & 0xff);
  }
 }
}
