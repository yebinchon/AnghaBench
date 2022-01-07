
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int pci_info (struct pci_dev*,char*) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void quirk_sis_96x_smbus(struct pci_dev *dev)
{
 u8 val = 0;
 pci_read_config_byte(dev, 0x77, &val);
 if (val & 0x10) {
  pci_info(dev, "Enabling SiS 96x SMBus\n");
  pci_write_config_byte(dev, 0x77, val & ~0x10);
 }
}
