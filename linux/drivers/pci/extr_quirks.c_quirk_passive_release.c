
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_DEVICE_ID_INTEL_82371SB_0 ;
 int PCI_VENDOR_ID_INTEL ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int pci_info (struct pci_dev*,char*) ;
 int pci_read_config_byte (struct pci_dev*,int,unsigned char*) ;
 int pci_write_config_byte (struct pci_dev*,int,unsigned char) ;

__attribute__((used)) static void quirk_passive_release(struct pci_dev *dev)
{
 struct pci_dev *d = ((void*)0);
 unsigned char dlc;





 while ((d = pci_get_device(PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_82371SB_0, d))) {
  pci_read_config_byte(d, 0x82, &dlc);
  if (!(dlc & 1<<1)) {
   pci_info(d, "PIIX3: Enabling Passive Release\n");
   dlc |= 1<<1;
   pci_write_config_byte(d, 0x82, dlc);
  }
 }
}
