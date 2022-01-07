
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rt2x00_dev {scalar_t__ curr_band; int lna_gain; } ;
typedef int s8 ;


 int EEPROM_RSSI_A ;
 int EEPROM_RSSI_A2 ;
 int EEPROM_RSSI_A2_OFFSET2 ;
 int EEPROM_RSSI_A_OFFSET0 ;
 int EEPROM_RSSI_A_OFFSET1 ;
 int EEPROM_RSSI_BG ;
 int EEPROM_RSSI_BG2 ;
 int EEPROM_RSSI_BG2_OFFSET2 ;
 int EEPROM_RSSI_BG_OFFSET0 ;
 int EEPROM_RSSI_BG_OFFSET1 ;
 scalar_t__ NL80211_BAND_2GHZ ;
 int RXWI_W2_RSSI0 ;
 int RXWI_W2_RSSI1 ;
 int RXWI_W2_RSSI2 ;
 int max (int,int) ;
 int rt2800_eeprom_read (struct rt2x00_dev*,int ) ;
 int rt2x00_get_field16 (int ,int ) ;
 int rt2x00_get_field32 (int ,int ) ;

__attribute__((used)) static int rt2800_agc_to_rssi(struct rt2x00_dev *rt2x00dev, u32 rxwi_w2)
{
 s8 rssi0 = rt2x00_get_field32(rxwi_w2, RXWI_W2_RSSI0);
 s8 rssi1 = rt2x00_get_field32(rxwi_w2, RXWI_W2_RSSI1);
 s8 rssi2 = rt2x00_get_field32(rxwi_w2, RXWI_W2_RSSI2);
 u16 eeprom;
 u8 offset0;
 u8 offset1;
 u8 offset2;

 if (rt2x00dev->curr_band == NL80211_BAND_2GHZ) {
  eeprom = rt2800_eeprom_read(rt2x00dev, EEPROM_RSSI_BG);
  offset0 = rt2x00_get_field16(eeprom, EEPROM_RSSI_BG_OFFSET0);
  offset1 = rt2x00_get_field16(eeprom, EEPROM_RSSI_BG_OFFSET1);
  eeprom = rt2800_eeprom_read(rt2x00dev, EEPROM_RSSI_BG2);
  offset2 = rt2x00_get_field16(eeprom, EEPROM_RSSI_BG2_OFFSET2);
 } else {
  eeprom = rt2800_eeprom_read(rt2x00dev, EEPROM_RSSI_A);
  offset0 = rt2x00_get_field16(eeprom, EEPROM_RSSI_A_OFFSET0);
  offset1 = rt2x00_get_field16(eeprom, EEPROM_RSSI_A_OFFSET1);
  eeprom = rt2800_eeprom_read(rt2x00dev, EEPROM_RSSI_A2);
  offset2 = rt2x00_get_field16(eeprom, EEPROM_RSSI_A2_OFFSET2);
 }






 rssi0 = (rssi0) ? (-12 - offset0 - rt2x00dev->lna_gain - rssi0) : -128;
 rssi1 = (rssi1) ? (-12 - offset1 - rt2x00dev->lna_gain - rssi1) : -128;
 rssi2 = (rssi2) ? (-12 - offset2 - rt2x00dev->lna_gain - rssi2) : -128;







 rssi0 = max(rssi0, rssi1);
 return (int)max(rssi0, rssi2);
}
