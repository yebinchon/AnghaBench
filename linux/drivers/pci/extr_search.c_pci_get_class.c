
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {unsigned int class; int class_mask; int subdevice; int subvendor; int device; int vendor; } ;
struct pci_dev {int dummy; } ;


 int PCI_ANY_ID ;
 struct pci_dev* pci_get_dev_by_id (struct pci_device_id*,struct pci_dev*) ;

struct pci_dev *pci_get_class(unsigned int class, struct pci_dev *from)
{
 struct pci_device_id id = {
  .vendor = PCI_ANY_ID,
  .device = PCI_ANY_ID,
  .subvendor = PCI_ANY_ID,
  .subdevice = PCI_ANY_ID,
  .class_mask = PCI_ANY_ID,
  .class = class,
 };

 return pci_get_dev_by_id(&id, from);
}
