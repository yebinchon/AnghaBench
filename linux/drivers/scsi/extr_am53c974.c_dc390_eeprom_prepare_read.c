
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void dc390_eeprom_prepare_read(struct pci_dev *pdev, u8 cmd)
{
 u8 carry_flag = 1, j = 0x80, bval;
 int i;

 for (i = 0; i < 9; i++) {
  if (carry_flag) {
   pci_write_config_byte(pdev, 0x80, 0x40);
   bval = 0xc0;
  } else
   bval = 0x80;

  udelay(160);
  pci_write_config_byte(pdev, 0x80, bval);
  udelay(160);
  pci_write_config_byte(pdev, 0x80, 0);
  udelay(160);

  carry_flag = (cmd & j) ? 1 : 0;
  j >>= 1;
 }
}
