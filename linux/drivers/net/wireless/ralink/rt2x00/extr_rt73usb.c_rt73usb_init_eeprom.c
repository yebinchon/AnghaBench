
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ rx; scalar_t__ tx; } ;
struct rt2x00_dev {int led_mcu_reg; int led_qual; int led_assoc; int led_radio; int cap_flags; scalar_t__ freq_offset; TYPE_1__ default_ant; } ;


 int CAPABILITY_EXTERNAL_LNA_A ;
 int CAPABILITY_EXTERNAL_LNA_BG ;
 int CAPABILITY_FRAME_TYPE ;
 int CAPABILITY_HW_BUTTON ;
 int EEPROM_ANTENNA ;
 int EEPROM_ANTENNA_FRAME_TYPE ;
 int EEPROM_ANTENNA_HARDWARE_RADIO ;
 int EEPROM_ANTENNA_RF_TYPE ;
 int EEPROM_ANTENNA_RX_DEFAULT ;
 int EEPROM_ANTENNA_TX_DEFAULT ;
 int EEPROM_FREQ ;
 int EEPROM_FREQ_OFFSET ;
 int EEPROM_LED ;
 int EEPROM_LED_POLARITY_ACT ;
 int EEPROM_LED_POLARITY_GPIO_0 ;
 int EEPROM_LED_POLARITY_GPIO_1 ;
 int EEPROM_LED_POLARITY_GPIO_2 ;
 int EEPROM_LED_POLARITY_GPIO_3 ;
 int EEPROM_LED_POLARITY_GPIO_4 ;
 int EEPROM_LED_POLARITY_RDY_A ;
 int EEPROM_LED_POLARITY_RDY_G ;
 int EEPROM_NIC ;
 int EEPROM_NIC_EXTERNAL_LNA ;
 int ENODEV ;
 scalar_t__ LED_MODE_SIGNAL_STRENGTH ;
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
 int RF2528 ;
 int RF5225 ;
 int RF5226 ;
 int RT2573 ;
 int __set_bit (int ,int *) ;
 scalar_t__ rt2x00_eeprom_read (struct rt2x00_dev*,int ) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 scalar_t__ rt2x00_get_field16 (scalar_t__,int ) ;
 int rt2x00_get_field32 (int ,int ) ;
 scalar_t__ rt2x00_rev (struct rt2x00_dev*) ;
 int rt2x00_rf (struct rt2x00_dev*,int ) ;
 int rt2x00_rt (struct rt2x00_dev*,int ) ;
 int rt2x00_set_chip (struct rt2x00_dev*,int ,scalar_t__,int ) ;
 int rt2x00_set_field16 (int *,int ,scalar_t__) ;
 int rt2x00usb_register_read (struct rt2x00_dev*,int ) ;
 int rt73usb_init_led (struct rt2x00_dev*,int *,int ) ;

__attribute__((used)) static int rt73usb_init_eeprom(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;
 u16 value;
 u16 eeprom;




 eeprom = rt2x00_eeprom_read(rt2x00dev, EEPROM_ANTENNA);




 value = rt2x00_get_field16(eeprom, EEPROM_ANTENNA_RF_TYPE);
 reg = rt2x00usb_register_read(rt2x00dev, MAC_CSR0);
 rt2x00_set_chip(rt2x00dev, rt2x00_get_field32(reg, MAC_CSR0_CHIPSET),
   value, rt2x00_get_field32(reg, MAC_CSR0_REVISION));

 if (!rt2x00_rt(rt2x00dev, RT2573) || (rt2x00_rev(rt2x00dev) == 0)) {
  rt2x00_err(rt2x00dev, "Invalid RT chipset detected\n");
  return -ENODEV;
 }

 if (!rt2x00_rf(rt2x00dev, RF5226) &&
     !rt2x00_rf(rt2x00dev, RF2528) &&
     !rt2x00_rf(rt2x00dev, RF5225) &&
     !rt2x00_rf(rt2x00dev, RF2527)) {
  rt2x00_err(rt2x00dev, "Invalid RF chipset detected\n");
  return -ENODEV;
 }




 rt2x00dev->default_ant.tx =
     rt2x00_get_field16(eeprom, EEPROM_ANTENNA_TX_DEFAULT);
 rt2x00dev->default_ant.rx =
     rt2x00_get_field16(eeprom, EEPROM_ANTENNA_RX_DEFAULT);




 if (rt2x00_get_field16(eeprom, EEPROM_ANTENNA_FRAME_TYPE))
  __set_bit(CAPABILITY_FRAME_TYPE, &rt2x00dev->cap_flags);




 if (rt2x00_get_field16(eeprom, EEPROM_ANTENNA_HARDWARE_RADIO))
  __set_bit(CAPABILITY_HW_BUTTON, &rt2x00dev->cap_flags);




 eeprom = rt2x00_eeprom_read(rt2x00dev, EEPROM_FREQ);
 rt2x00dev->freq_offset = rt2x00_get_field16(eeprom, EEPROM_FREQ_OFFSET);




 eeprom = rt2x00_eeprom_read(rt2x00dev, EEPROM_NIC);

 if (rt2x00_get_field16(eeprom, EEPROM_NIC_EXTERNAL_LNA)) {
  __set_bit(CAPABILITY_EXTERNAL_LNA_A, &rt2x00dev->cap_flags);
  __set_bit(CAPABILITY_EXTERNAL_LNA_BG, &rt2x00dev->cap_flags);
 }
 return 0;
}
