
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_serial_quirk {int subdevice; int subvendor; int device; int vendor; } ;
struct pci_dev {int subsystem_device; int subsystem_vendor; int device; int vendor; } ;


 struct pci_serial_quirk* pci_serial_quirks ;
 scalar_t__ quirk_id_matches (int ,int ) ;

__attribute__((used)) static struct pci_serial_quirk *find_quirk(struct pci_dev *dev)
{
 struct pci_serial_quirk *quirk;

 for (quirk = pci_serial_quirks; ; quirk++)
  if (quirk_id_matches(quirk->vendor, dev->vendor) &&
      quirk_id_matches(quirk->device, dev->device) &&
      quirk_id_matches(quirk->subvendor, dev->subsystem_vendor) &&
      quirk_id_matches(quirk->subdevice, dev->subsystem_device))
   break;
 return quirk;
}
