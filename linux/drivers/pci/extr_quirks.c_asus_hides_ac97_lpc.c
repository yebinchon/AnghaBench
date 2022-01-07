
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {scalar_t__ subsystem_vendor; scalar_t__ device; } ;


 scalar_t__ PCI_DEVICE_ID_VIA_8237 ;
 scalar_t__ PCI_VENDOR_ID_ASUSTEK ;
 scalar_t__ likely (int) ;
 int pci_info (struct pci_dev*,char*,...) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void asus_hides_ac97_lpc(struct pci_dev *dev)
{
 u8 val;
 int asus_hides_ac97 = 0;

 if (likely(dev->subsystem_vendor == PCI_VENDOR_ID_ASUSTEK)) {
  if (dev->device == PCI_DEVICE_ID_VIA_8237)
   asus_hides_ac97 = 1;
 }

 if (!asus_hides_ac97)
  return;

 pci_read_config_byte(dev, 0x50, &val);
 if (val & 0xc0) {
  pci_write_config_byte(dev, 0x50, val & (~0xc0));
  pci_read_config_byte(dev, 0x50, &val);
  if (val & 0xc0)
   pci_info(dev, "Onboard AC97/MC97 devices continue to play 'hide and seek'! 0x%x\n",
     val);
  else
   pci_info(dev, "Enabled onboard AC97/MC97 devices\n");
 }
}
