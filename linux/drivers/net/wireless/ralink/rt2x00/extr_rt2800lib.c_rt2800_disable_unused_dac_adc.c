
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rt2x00_dev {int dummy; } ;


 int EEPROM_NIC_CONF0 ;
 int EEPROM_NIC_CONF0_RXPATH ;
 int EEPROM_NIC_CONF0_TXPATH ;
 int rt2800_bbp_read (struct rt2x00_dev*,int) ;
 int rt2800_bbp_write (struct rt2x00_dev*,int,int) ;
 int rt2800_eeprom_read (struct rt2x00_dev*,int ) ;
 int rt2x00_get_field16 (int ,int ) ;

__attribute__((used)) static void rt2800_disable_unused_dac_adc(struct rt2x00_dev *rt2x00dev)
{
 u16 eeprom;
 u8 value;

 value = rt2800_bbp_read(rt2x00dev, 138);
 eeprom = rt2800_eeprom_read(rt2x00dev, EEPROM_NIC_CONF0);
 if (rt2x00_get_field16(eeprom, EEPROM_NIC_CONF0_TXPATH) == 1)
  value |= 0x20;
 if (rt2x00_get_field16(eeprom, EEPROM_NIC_CONF0_RXPATH) == 1)
  value &= ~0x02;
 rt2800_bbp_write(rt2x00dev, 138, value);
}
