
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_dev {int device; } ;


 int PCI_DEVICE_ID ;
 int SIS_DETECT_REGISTER ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int quirk_sis_96x_smbus (struct pci_dev*) ;

__attribute__((used)) static void quirk_sis_503(struct pci_dev *dev)
{
 u8 reg;
 u16 devid;

 pci_read_config_byte(dev, SIS_DETECT_REGISTER, &reg);
 pci_write_config_byte(dev, SIS_DETECT_REGISTER, reg | (1 << 6));
 pci_read_config_word(dev, PCI_DEVICE_ID, &devid);
 if (((devid & 0xfff0) != 0x0960) && (devid != 0x0018)) {
  pci_write_config_byte(dev, SIS_DETECT_REGISTER, reg);
  return;
 }






 dev->device = devid;
 quirk_sis_96x_smbus(dev);
}
