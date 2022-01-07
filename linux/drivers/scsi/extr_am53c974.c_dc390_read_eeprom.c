
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;


 scalar_t__ DC390_EEPROM_LEN ;
 scalar_t__ DC390_EEPROM_READ ;
 int dc390_eeprom_get_data (struct pci_dev*) ;
 int dc390_eeprom_prepare_read (struct pci_dev*,int ) ;
 int pci_write_config_byte (struct pci_dev*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void dc390_read_eeprom(struct pci_dev *pdev, u16 *ptr)
{
 u8 cmd = DC390_EEPROM_READ, i;

 for (i = 0; i < DC390_EEPROM_LEN; i++) {
  pci_write_config_byte(pdev, 0xc0, 0);
  udelay(160);

  dc390_eeprom_prepare_read(pdev, cmd++);
  *ptr++ = dc390_eeprom_get_data(pdev);

  pci_write_config_byte(pdev, 0x80, 0);
  pci_write_config_byte(pdev, 0x80, 0);
  udelay(160);
 }
}
