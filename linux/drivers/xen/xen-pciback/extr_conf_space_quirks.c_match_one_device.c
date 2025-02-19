
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {scalar_t__ vendor; scalar_t__ device; scalar_t__ subvendor; scalar_t__ subdevice; int class; int class_mask; } ;
struct pci_dev {scalar_t__ vendor; scalar_t__ device; scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; int class; } ;


 scalar_t__ PCI_ANY_ID ;

__attribute__((used)) static inline const struct pci_device_id *
match_one_device(const struct pci_device_id *id, const struct pci_dev *dev)
{
 if ((id->vendor == PCI_ANY_ID || id->vendor == dev->vendor) &&
     (id->device == PCI_ANY_ID || id->device == dev->device) &&
     (id->subvendor == PCI_ANY_ID ||
    id->subvendor == dev->subsystem_vendor) &&
     (id->subdevice == PCI_ANY_ID ||
    id->subdevice == dev->subsystem_device) &&
     !((id->class ^ dev->class) & id->class_mask))
  return id;
 return ((void*)0);
}
