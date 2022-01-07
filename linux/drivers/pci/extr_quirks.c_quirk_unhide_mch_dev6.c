
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int pci_info (struct pci_dev*,char*) ;
 scalar_t__ pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void quirk_unhide_mch_dev6(struct pci_dev *dev)
{
 u8 reg;

 if (pci_read_config_byte(dev, 0xF4, &reg) == 0 && !(reg & 0x02)) {
  pci_info(dev, "Enabling MCH 'Overflow' Device\n");
  pci_write_config_byte(dev, 0xF4, reg | 0x02);
 }
}
