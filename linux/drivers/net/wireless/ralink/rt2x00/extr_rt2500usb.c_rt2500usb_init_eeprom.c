
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ tx; scalar_t__ rx; } ;
struct rt2x00_dev {void* rssi_offset; int cap_flags; int led_qual; int led_radio; TYPE_1__ default_ant; } ;


 void* ANTENNA_HW_DIVERSITY ;
 scalar_t__ ANTENNA_SW_DIVERSITY ;
 int CAPABILITY_HW_BUTTON ;
 int EEPROM_ANTENNA ;
 int EEPROM_ANTENNA_HARDWARE_RADIO ;
 int EEPROM_ANTENNA_LED_MODE ;
 int EEPROM_ANTENNA_RF_TYPE ;
 int EEPROM_ANTENNA_RX_DEFAULT ;
 int EEPROM_ANTENNA_TX_DEFAULT ;
 int EEPROM_CALIBRATE_OFFSET ;
 int EEPROM_CALIBRATE_OFFSET_RSSI ;
 int ENODEV ;
 int LED_MODE_ASUS ;
 int LED_MODE_DEFAULT ;
 int LED_MODE_TXRX_ACTIVITY ;
 int LED_TYPE_ACTIVITY ;
 int LED_TYPE_RADIO ;
 int MAC_CSR0 ;
 int RF2522 ;
 int RF2523 ;
 int RF2524 ;
 int RF2525 ;
 int RF2525E ;
 int RF5222 ;
 int RT2570 ;
 int __set_bit (int ,int *) ;
 int rt2500usb_init_led (struct rt2x00_dev*,int *,int ) ;
 int rt2500usb_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00_eeprom_read (struct rt2x00_dev*,int ) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 void* rt2x00_get_field16 (int,int ) ;
 int rt2x00_rf (struct rt2x00_dev*,int ) ;
 int rt2x00_set_chip (struct rt2x00_dev*,int ,int,int) ;

__attribute__((used)) static int rt2500usb_init_eeprom(struct rt2x00_dev *rt2x00dev)
{
 u16 reg;
 u16 value;
 u16 eeprom;




 eeprom = rt2x00_eeprom_read(rt2x00dev, EEPROM_ANTENNA);




 value = rt2x00_get_field16(eeprom, EEPROM_ANTENNA_RF_TYPE);
 reg = rt2500usb_register_read(rt2x00dev, MAC_CSR0);
 rt2x00_set_chip(rt2x00dev, RT2570, value, reg);

 if (((reg & 0xfff0) != 0) || ((reg & 0x0000000f) == 0)) {
  rt2x00_err(rt2x00dev, "Invalid RT chipset detected\n");
  return -ENODEV;
 }

 if (!rt2x00_rf(rt2x00dev, RF2522) &&
     !rt2x00_rf(rt2x00dev, RF2523) &&
     !rt2x00_rf(rt2x00dev, RF2524) &&
     !rt2x00_rf(rt2x00dev, RF2525) &&
     !rt2x00_rf(rt2x00dev, RF2525E) &&
     !rt2x00_rf(rt2x00dev, RF5222)) {
  rt2x00_err(rt2x00dev, "Invalid RF chipset detected\n");
  return -ENODEV;
 }




 rt2x00dev->default_ant.tx =
     rt2x00_get_field16(eeprom, EEPROM_ANTENNA_TX_DEFAULT);
 rt2x00dev->default_ant.rx =
     rt2x00_get_field16(eeprom, EEPROM_ANTENNA_RX_DEFAULT);







 if (rt2x00dev->default_ant.tx == ANTENNA_SW_DIVERSITY)
  rt2x00dev->default_ant.tx = ANTENNA_HW_DIVERSITY;
 if (rt2x00dev->default_ant.rx == ANTENNA_SW_DIVERSITY)
  rt2x00dev->default_ant.rx = ANTENNA_HW_DIVERSITY;
 if (rt2x00_get_field16(eeprom, EEPROM_ANTENNA_HARDWARE_RADIO))
  __set_bit(CAPABILITY_HW_BUTTON, &rt2x00dev->cap_flags);




 eeprom = rt2x00_eeprom_read(rt2x00dev, EEPROM_CALIBRATE_OFFSET);
 rt2x00dev->rssi_offset =
     rt2x00_get_field16(eeprom, EEPROM_CALIBRATE_OFFSET_RSSI);

 return 0;
}
