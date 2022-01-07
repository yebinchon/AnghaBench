
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct rt2x00lib_conf {TYPE_3__* conf; } ;
struct rt2x00_dev {short lna_gain; } ;
struct TYPE_5__ {TYPE_1__* chan; } ;
struct TYPE_6__ {TYPE_2__ chandef; } ;
struct TYPE_4__ {scalar_t__ band; } ;


 int EEPROM_RSSI_OFFSET_A ;
 int EEPROM_RSSI_OFFSET_A_1 ;
 int EEPROM_RSSI_OFFSET_BG ;
 int EEPROM_RSSI_OFFSET_BG_1 ;
 scalar_t__ NL80211_BAND_2GHZ ;
 int rt2x00_eeprom_read (struct rt2x00_dev*,int ) ;
 scalar_t__ rt2x00_get_field16 (int ,int ) ;
 scalar_t__ rt2x00_has_cap_external_lna_bg (struct rt2x00_dev*) ;

__attribute__((used)) static void rt73usb_config_lna_gain(struct rt2x00_dev *rt2x00dev,
        struct rt2x00lib_conf *libconf)
{
 u16 eeprom;
 short lna_gain = 0;

 if (libconf->conf->chandef.chan->band == NL80211_BAND_2GHZ) {
  if (rt2x00_has_cap_external_lna_bg(rt2x00dev))
   lna_gain += 14;

  eeprom = rt2x00_eeprom_read(rt2x00dev, EEPROM_RSSI_OFFSET_BG);
  lna_gain -= rt2x00_get_field16(eeprom, EEPROM_RSSI_OFFSET_BG_1);
 } else {
  eeprom = rt2x00_eeprom_read(rt2x00dev, EEPROM_RSSI_OFFSET_A);
  lna_gain -= rt2x00_get_field16(eeprom, EEPROM_RSSI_OFFSET_A_1);
 }

 rt2x00dev->lna_gain = lna_gain;
}
