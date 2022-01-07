
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ subsystem_vendor; int subsystem_device; scalar_t__ device; int dev; } ;


 scalar_t__ PCI_VENDOR_ID_HP ;
 int dev_info (int *,char*) ;

__attribute__((used)) static void quirk_diva_aux_disable(struct pci_dev *dev)
{
 if (dev->subsystem_vendor != PCI_VENDOR_ID_HP ||
     dev->subsystem_device != 0x1291)
  return;

 dev_info(&dev->dev, "Hiding Diva built-in AUX serial device");
 dev->device = 0;
}
