
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int channel; } ;
struct rt2x00lib_conf {TYPE_1__ rf; } ;
struct rt2x00_dev {short lna_gain; } ;


 int EEPROM_EXT_LNA2 ;
 int EEPROM_EXT_LNA2_A1 ;
 int EEPROM_EXT_LNA2_A2 ;
 int EEPROM_LNA ;
 int EEPROM_LNA_A0 ;
 int EEPROM_LNA_BG ;
 int EEPROM_RSSI_A2 ;
 int EEPROM_RSSI_A2_LNA_A2 ;
 int EEPROM_RSSI_BG2 ;
 int EEPROM_RSSI_BG2_LNA_A1 ;
 int RT3593 ;
 int RT3883 ;
 int rt2800_eeprom_read (struct rt2x00_dev*,int ) ;
 short rt2x00_get_field16 (int ,int ) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;

__attribute__((used)) static void rt2800_config_lna_gain(struct rt2x00_dev *rt2x00dev,
       struct rt2x00lib_conf *libconf)
{
 u16 eeprom;
 short lna_gain;

 if (libconf->rf.channel <= 14) {
  eeprom = rt2800_eeprom_read(rt2x00dev, EEPROM_LNA);
  lna_gain = rt2x00_get_field16(eeprom, EEPROM_LNA_BG);
 } else if (libconf->rf.channel <= 64) {
  eeprom = rt2800_eeprom_read(rt2x00dev, EEPROM_LNA);
  lna_gain = rt2x00_get_field16(eeprom, EEPROM_LNA_A0);
 } else if (libconf->rf.channel <= 128) {
  if (rt2x00_rt(rt2x00dev, RT3593) ||
      rt2x00_rt(rt2x00dev, RT3883)) {
   eeprom = rt2800_eeprom_read(rt2x00dev, EEPROM_EXT_LNA2);
   lna_gain = rt2x00_get_field16(eeprom,
            EEPROM_EXT_LNA2_A1);
  } else {
   eeprom = rt2800_eeprom_read(rt2x00dev, EEPROM_RSSI_BG2);
   lna_gain = rt2x00_get_field16(eeprom,
            EEPROM_RSSI_BG2_LNA_A1);
  }
 } else {
  if (rt2x00_rt(rt2x00dev, RT3593) ||
      rt2x00_rt(rt2x00dev, RT3883)) {
   eeprom = rt2800_eeprom_read(rt2x00dev, EEPROM_EXT_LNA2);
   lna_gain = rt2x00_get_field16(eeprom,
            EEPROM_EXT_LNA2_A2);
  } else {
   eeprom = rt2800_eeprom_read(rt2x00dev, EEPROM_RSSI_A2);
   lna_gain = rt2x00_get_field16(eeprom,
            EEPROM_RSSI_A2_LNA_A2);
  }
 }

 rt2x00dev->lna_gain = lna_gain;
}
