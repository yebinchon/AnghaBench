
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rt2x00_dev {int dummy; } ;


 int BBP138_RX_ADC1 ;
 int BBP138_TX_DAC1 ;
 int EEPROM_NIC_CONF0 ;
 int EEPROM_NIC_CONF0_RXPATH ;
 int EEPROM_NIC_CONF0_TXPATH ;
 int RFCSR30_RX_VCM ;
 int RFCSR38_RX_LO1_EN ;
 int RFCSR39_RX_LO2_EN ;
 int rt2800_bbp4_mac_if_ctrl (struct rt2x00_dev*) ;
 int rt2800_bbp_read (struct rt2x00_dev*,int) ;
 int rt2800_bbp_write (struct rt2x00_dev*,int,int ) ;
 int rt2800_eeprom_read (struct rt2x00_dev*,int ) ;
 int rt2800_rfcsr_read (struct rt2x00_dev*,int) ;
 int rt2800_rfcsr_write (struct rt2x00_dev*,int,int ) ;
 int rt2x00_get_field16 (int ,int ) ;
 int rt2x00_set_field8 (int *,int ,int) ;

__attribute__((used)) static void rt2800_normal_mode_setup_5xxx(struct rt2x00_dev *rt2x00dev)
{
 u8 reg;
 u16 eeprom;


 reg = rt2800_bbp_read(rt2x00dev, 138);
 eeprom = rt2800_eeprom_read(rt2x00dev, EEPROM_NIC_CONF0);
 if (rt2x00_get_field16(eeprom, EEPROM_NIC_CONF0_RXPATH) == 1)
  rt2x00_set_field8(&reg, BBP138_RX_ADC1, 0);
 if (rt2x00_get_field16(eeprom, EEPROM_NIC_CONF0_TXPATH) == 1)
  rt2x00_set_field8(&reg, BBP138_TX_DAC1, 1);
 rt2800_bbp_write(rt2x00dev, 138, reg);

 reg = rt2800_rfcsr_read(rt2x00dev, 38);
 rt2x00_set_field8(&reg, RFCSR38_RX_LO1_EN, 0);
 rt2800_rfcsr_write(rt2x00dev, 38, reg);

 reg = rt2800_rfcsr_read(rt2x00dev, 39);
 rt2x00_set_field8(&reg, RFCSR39_RX_LO2_EN, 0);
 rt2800_rfcsr_write(rt2x00dev, 39, reg);

 rt2800_bbp4_mac_if_ctrl(rt2x00dev);

 reg = rt2800_rfcsr_read(rt2x00dev, 30);
 rt2x00_set_field8(&reg, RFCSR30_RX_VCM, 2);
 rt2800_rfcsr_write(rt2x00dev, 30, reg);
}
