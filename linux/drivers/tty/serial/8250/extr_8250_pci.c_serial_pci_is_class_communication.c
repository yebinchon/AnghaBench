
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int class; } ;


 int ENODEV ;
 int PCI_CLASS_COMMUNICATION_MODEM ;
 int PCI_CLASS_COMMUNICATION_MULTISERIAL ;
 int PCI_CLASS_COMMUNICATION_SERIAL ;

__attribute__((used)) static int serial_pci_is_class_communication(struct pci_dev *dev)
{




 if ((((dev->class >> 8) != PCI_CLASS_COMMUNICATION_SERIAL) &&
      ((dev->class >> 8) != PCI_CLASS_COMMUNICATION_MULTISERIAL) &&
      ((dev->class >> 8) != PCI_CLASS_COMMUNICATION_MODEM)) ||
     (dev->class & 0xff) > 6)
  return -ENODEV;

 return 0;
}
