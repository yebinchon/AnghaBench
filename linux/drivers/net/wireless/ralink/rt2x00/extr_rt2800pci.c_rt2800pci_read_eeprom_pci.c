
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rt2x00_dev {int eeprom; } ;
struct eeprom_93cx6 {scalar_t__ reg_chip_select; scalar_t__ reg_data_clock; scalar_t__ reg_data_out; scalar_t__ reg_data_in; int width; int register_write; int register_read; struct rt2x00_dev* data; } ;


 int E2PROM_CSR ;
 int E2PROM_CSR_TYPE ;
 int EEPROM_BASE ;
 int EEPROM_SIZE ;
 int PCI_EEPROM_WIDTH_93C46 ;
 int PCI_EEPROM_WIDTH_93C66 ;
 int PCI_EEPROM_WIDTH_93C86 ;
 int eeprom_93cx6_multiread (struct eeprom_93cx6*,int ,int ,int) ;
 int rt2800pci_eepromregister_read ;
 int rt2800pci_eepromregister_write ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;

__attribute__((used)) static int rt2800pci_read_eeprom_pci(struct rt2x00_dev *rt2x00dev)
{
 struct eeprom_93cx6 eeprom;
 u32 reg;

 reg = rt2x00mmio_register_read(rt2x00dev, E2PROM_CSR);

 eeprom.data = rt2x00dev;
 eeprom.register_read = rt2800pci_eepromregister_read;
 eeprom.register_write = rt2800pci_eepromregister_write;
 switch (rt2x00_get_field32(reg, E2PROM_CSR_TYPE))
 {
 case 0:
  eeprom.width = PCI_EEPROM_WIDTH_93C46;
  break;
 case 1:
  eeprom.width = PCI_EEPROM_WIDTH_93C66;
  break;
 default:
  eeprom.width = PCI_EEPROM_WIDTH_93C86;
  break;
 }
 eeprom.reg_data_in = 0;
 eeprom.reg_data_out = 0;
 eeprom.reg_data_clock = 0;
 eeprom.reg_chip_select = 0;

 eeprom_93cx6_multiread(&eeprom, EEPROM_BASE, rt2x00dev->eeprom,
          EEPROM_SIZE / sizeof(u16));

 return 0;
}
