
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int tx; int rx; } ;
struct rt2x00_dev {int freq_offset; int led_mcu_reg; int led_qual; int led_assoc; int led_radio; TYPE_1__ default_ant; int cap_flags; } ;


 int ANTENNA_A ;
 int ANTENNA_B ;
 void* ANTENNA_SW_DIVERSITY ;
 int CAPABILITY_DOUBLE_ANTENNA ;
 int CAPABILITY_EXTERNAL_LNA_A ;
 int CAPABILITY_EXTERNAL_LNA_BG ;
 int CAPABILITY_FRAME_TYPE ;
 int CAPABILITY_HW_BUTTON ;
 int CAPABILITY_RF_SEQUENCE ;
 int EEPROM_ANTENNA ;
 int EEPROM_ANTENNA_FRAME_TYPE ;
 int EEPROM_ANTENNA_HARDWARE_RADIO ;
 int EEPROM_ANTENNA_NUM ;
 int EEPROM_ANTENNA_RF_TYPE ;
 int EEPROM_ANTENNA_RX_DEFAULT ;
 int EEPROM_ANTENNA_TX_DEFAULT ;
 int EEPROM_FREQ ;
 int EEPROM_FREQ_OFFSET ;
 int EEPROM_FREQ_SEQ ;
 int EEPROM_LED ;
 int EEPROM_LED_LED_MODE ;
 int EEPROM_LED_POLARITY_ACT ;
 int EEPROM_LED_POLARITY_GPIO_0 ;
 int EEPROM_LED_POLARITY_GPIO_1 ;
 int EEPROM_LED_POLARITY_GPIO_2 ;
 int EEPROM_LED_POLARITY_GPIO_3 ;
 int EEPROM_LED_POLARITY_GPIO_4 ;
 int EEPROM_LED_POLARITY_RDY_A ;
 int EEPROM_LED_POLARITY_RDY_G ;
 int EEPROM_NIC ;
 int EEPROM_NIC_ENABLE_DIVERSITY ;
 int EEPROM_NIC_EXTERNAL_LNA_A ;
 int EEPROM_NIC_EXTERNAL_LNA_BG ;
 int EEPROM_NIC_RX_FIXED ;
 int EEPROM_NIC_TX_DIVERSITY ;
 int EEPROM_NIC_TX_FIXED ;
 int ENODEV ;
 int LED_MODE_SIGNAL_STRENGTH ;
 int LED_TYPE_ASSOC ;
 int LED_TYPE_QUALITY ;
 int LED_TYPE_RADIO ;
 int MAC_CSR0 ;
 int MAC_CSR0_CHIPSET ;
 int MAC_CSR0_REVISION ;
 int MCU_LEDCS_LED_MODE ;
 int MCU_LEDCS_POLARITY_ACT ;
 int MCU_LEDCS_POLARITY_GPIO_0 ;
 int MCU_LEDCS_POLARITY_GPIO_1 ;
 int MCU_LEDCS_POLARITY_GPIO_2 ;
 int MCU_LEDCS_POLARITY_GPIO_3 ;
 int MCU_LEDCS_POLARITY_GPIO_4 ;
 int MCU_LEDCS_POLARITY_READY_A ;
 int MCU_LEDCS_POLARITY_READY_BG ;
 int RF2527 ;
 int RF2529 ;
 int RF5225 ;
 int RF5325 ;
 int __set_bit (int ,int *) ;
 int rt2x00_eeprom_read (struct rt2x00_dev*,int ) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 int rt2x00_get_field16 (int,int ) ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00_has_cap_double_antenna (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_rf (struct rt2x00_dev*,int ) ;
 int rt2x00_set_chip (struct rt2x00_dev*,int ,int,int ) ;
 int rt2x00_set_field16 (int *,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt61pci_init_led (struct rt2x00_dev*,int *,int ) ;

__attribute__((used)) static int rt61pci_init_eeprom(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;
 u16 value;
 u16 eeprom;




 eeprom = rt2x00_eeprom_read(rt2x00dev, EEPROM_ANTENNA);




 value = rt2x00_get_field16(eeprom, EEPROM_ANTENNA_RF_TYPE);
 reg = rt2x00mmio_register_read(rt2x00dev, MAC_CSR0);
 rt2x00_set_chip(rt2x00dev, rt2x00_get_field32(reg, MAC_CSR0_CHIPSET),
   value, rt2x00_get_field32(reg, MAC_CSR0_REVISION));

 if (!rt2x00_rf(rt2x00dev, RF5225) &&
     !rt2x00_rf(rt2x00dev, RF5325) &&
     !rt2x00_rf(rt2x00dev, RF2527) &&
     !rt2x00_rf(rt2x00dev, RF2529)) {
  rt2x00_err(rt2x00dev, "Invalid RF chipset detected\n");
  return -ENODEV;
 }




 if (rt2x00_get_field16(eeprom, EEPROM_ANTENNA_NUM) == 2)
  __set_bit(CAPABILITY_DOUBLE_ANTENNA, &rt2x00dev->cap_flags);




 rt2x00dev->default_ant.tx =
     rt2x00_get_field16(eeprom, EEPROM_ANTENNA_TX_DEFAULT);
 rt2x00dev->default_ant.rx =
     rt2x00_get_field16(eeprom, EEPROM_ANTENNA_RX_DEFAULT);




 if (rt2x00_get_field16(eeprom, EEPROM_ANTENNA_FRAME_TYPE))
  __set_bit(CAPABILITY_FRAME_TYPE, &rt2x00dev->cap_flags);




 if (rt2x00_get_field16(eeprom, EEPROM_ANTENNA_HARDWARE_RADIO))
  __set_bit(CAPABILITY_HW_BUTTON, &rt2x00dev->cap_flags);




 eeprom = rt2x00_eeprom_read(rt2x00dev, EEPROM_FREQ);
 if (rt2x00_get_field16(eeprom, EEPROM_FREQ_SEQ))
  __set_bit(CAPABILITY_RF_SEQUENCE, &rt2x00dev->cap_flags);

 rt2x00dev->freq_offset = rt2x00_get_field16(eeprom, EEPROM_FREQ_OFFSET);




 eeprom = rt2x00_eeprom_read(rt2x00dev, EEPROM_NIC);

 if (rt2x00_get_field16(eeprom, EEPROM_NIC_EXTERNAL_LNA_A))
  __set_bit(CAPABILITY_EXTERNAL_LNA_A, &rt2x00dev->cap_flags);
 if (rt2x00_get_field16(eeprom, EEPROM_NIC_EXTERNAL_LNA_BG))
  __set_bit(CAPABILITY_EXTERNAL_LNA_BG, &rt2x00dev->cap_flags);






 if (rt2x00_rf(rt2x00dev, RF2529) &&
     !rt2x00_has_cap_double_antenna(rt2x00dev)) {
  rt2x00dev->default_ant.rx =
      ANTENNA_A + rt2x00_get_field16(eeprom, EEPROM_NIC_RX_FIXED);
  rt2x00dev->default_ant.tx =
      ANTENNA_B - rt2x00_get_field16(eeprom, EEPROM_NIC_TX_FIXED);

  if (rt2x00_get_field16(eeprom, EEPROM_NIC_TX_DIVERSITY))
   rt2x00dev->default_ant.tx = ANTENNA_SW_DIVERSITY;
  if (rt2x00_get_field16(eeprom, EEPROM_NIC_ENABLE_DIVERSITY))
   rt2x00dev->default_ant.rx = ANTENNA_SW_DIVERSITY;
 }
 return 0;
}
