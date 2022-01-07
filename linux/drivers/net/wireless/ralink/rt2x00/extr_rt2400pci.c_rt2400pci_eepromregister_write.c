
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct eeprom_93cx6 {int reg_chip_select; int reg_data_clock; int reg_data_out; int reg_data_in; struct rt2x00_dev* data; } ;


 int CSR21 ;
 int CSR21_EEPROM_CHIP_SELECT ;
 int CSR21_EEPROM_DATA_CLOCK ;
 int CSR21_EEPROM_DATA_IN ;
 int CSR21_EEPROM_DATA_OUT ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt2400pci_eepromregister_write(struct eeprom_93cx6 *eeprom)
{
 struct rt2x00_dev *rt2x00dev = eeprom->data;
 u32 reg = 0;

 rt2x00_set_field32(&reg, CSR21_EEPROM_DATA_IN, !!eeprom->reg_data_in);
 rt2x00_set_field32(&reg, CSR21_EEPROM_DATA_OUT, !!eeprom->reg_data_out);
 rt2x00_set_field32(&reg, CSR21_EEPROM_DATA_CLOCK,
      !!eeprom->reg_data_clock);
 rt2x00_set_field32(&reg, CSR21_EEPROM_CHIP_SELECT,
      !!eeprom->reg_chip_select);

 rt2x00mmio_register_write(rt2x00dev, CSR21, reg);
}
