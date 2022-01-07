
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_2__ {int rt; } ;
struct rt2x00_dev {TYPE_1__ chip; } ;
struct ieee80211_channel {int band; int max_power; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int BBP1_TX_POWER_CTRL ;
 int EEPROM_TXPOWER_BYRATE ;
 int EEPROM_TXPOWER_BYRATE_RATE0 ;
 int EEPROM_TXPOWER_BYRATE_RATE1 ;
 int EEPROM_TXPOWER_BYRATE_RATE2 ;
 int EEPROM_TXPOWER_BYRATE_RATE3 ;
 int EEPROM_TXPOWER_BYRATE_SIZE ;







 scalar_t__ TX_PWR_CFG_0 ;
 scalar_t__ TX_PWR_CFG_4 ;
 int TX_PWR_CFG_RATE0 ;
 int TX_PWR_CFG_RATE1 ;
 int TX_PWR_CFG_RATE2 ;
 int TX_PWR_CFG_RATE3 ;
 int TX_PWR_CFG_RATE4 ;
 int TX_PWR_CFG_RATE5 ;
 int TX_PWR_CFG_RATE6 ;
 int TX_PWR_CFG_RATE7 ;
 int rt2800_bbp_read (struct rt2x00_dev*,int) ;
 int rt2800_bbp_write (struct rt2x00_dev*,int,int ) ;
 int rt2800_compensate_txpower (struct rt2x00_dev*,int,int,int,int ,int) ;
 int rt2800_eeprom_read_from_array (struct rt2x00_dev*,int ,int) ;
 int rt2800_get_gain_calibration_delta (struct rt2x00_dev*) ;
 int rt2800_get_txpower_bw_comp (struct rt2x00_dev*,int) ;
 scalar_t__ rt2800_get_txpower_reg_delta (struct rt2x00_dev*,int,int ) ;
 scalar_t__ rt2800_register_read (struct rt2x00_dev*,scalar_t__) ;
 int rt2800_register_write (struct rt2x00_dev*,scalar_t__,scalar_t__) ;
 int rt2x00_get_field16 (int ,int ) ;
 int rt2x00_set_field32 (scalar_t__*,int ,int ) ;
 int rt2x00_set_field8 (int *,int ,int) ;

__attribute__((used)) static void rt2800_config_txpower_rt28xx(struct rt2x00_dev *rt2x00dev,
      struct ieee80211_channel *chan,
      int power_level)
{
 u8 txpower, r1;
 u16 eeprom;
 u32 reg, offset;
 int i, is_rate_b, delta, power_ctrl;
 enum nl80211_band band = chan->band;





 delta = rt2800_get_txpower_bw_comp(rt2x00dev, band);
 switch (rt2x00dev->chip.rt) {
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  delta += rt2800_get_gain_calibration_delta(rt2x00dev);
  break;
 default:

  break;
 }






 delta += rt2800_get_txpower_reg_delta(rt2x00dev, power_level,
           chan->max_power);
 if (delta <= -12) {
  power_ctrl = 2;
  delta += 12;
 } else if (delta <= -6) {
  power_ctrl = 1;
  delta += 6;
 } else {
  power_ctrl = 0;
 }
 r1 = rt2800_bbp_read(rt2x00dev, 1);
 rt2x00_set_field8(&r1, BBP1_TX_POWER_CTRL, power_ctrl);
 rt2800_bbp_write(rt2x00dev, 1, r1);

 offset = TX_PWR_CFG_0;

 for (i = 0; i < EEPROM_TXPOWER_BYRATE_SIZE; i += 2) {

  if (offset > TX_PWR_CFG_4)
   break;

  reg = rt2800_register_read(rt2x00dev, offset);


  eeprom = rt2800_eeprom_read_from_array(rt2x00dev,
             EEPROM_TXPOWER_BYRATE,
             i);

  is_rate_b = i ? 0 : 1;





  txpower = rt2x00_get_field16(eeprom,
          EEPROM_TXPOWER_BYRATE_RATE0);
  txpower = rt2800_compensate_txpower(rt2x00dev, is_rate_b, band,
          power_level, txpower, delta);
  rt2x00_set_field32(&reg, TX_PWR_CFG_RATE0, txpower);






  txpower = rt2x00_get_field16(eeprom,
          EEPROM_TXPOWER_BYRATE_RATE1);
  txpower = rt2800_compensate_txpower(rt2x00dev, is_rate_b, band,
          power_level, txpower, delta);
  rt2x00_set_field32(&reg, TX_PWR_CFG_RATE1, txpower);






  txpower = rt2x00_get_field16(eeprom,
          EEPROM_TXPOWER_BYRATE_RATE2);
  txpower = rt2800_compensate_txpower(rt2x00dev, is_rate_b, band,
          power_level, txpower, delta);
  rt2x00_set_field32(&reg, TX_PWR_CFG_RATE2, txpower);






  txpower = rt2x00_get_field16(eeprom,
          EEPROM_TXPOWER_BYRATE_RATE3);
  txpower = rt2800_compensate_txpower(rt2x00dev, is_rate_b, band,
          power_level, txpower, delta);
  rt2x00_set_field32(&reg, TX_PWR_CFG_RATE3, txpower);


  eeprom = rt2800_eeprom_read_from_array(rt2x00dev,
             EEPROM_TXPOWER_BYRATE,
             i + 1);

  is_rate_b = 0;





  txpower = rt2x00_get_field16(eeprom,
          EEPROM_TXPOWER_BYRATE_RATE0);
  txpower = rt2800_compensate_txpower(rt2x00dev, is_rate_b, band,
          power_level, txpower, delta);
  rt2x00_set_field32(&reg, TX_PWR_CFG_RATE4, txpower);






  txpower = rt2x00_get_field16(eeprom,
          EEPROM_TXPOWER_BYRATE_RATE1);
  txpower = rt2800_compensate_txpower(rt2x00dev, is_rate_b, band,
          power_level, txpower, delta);
  rt2x00_set_field32(&reg, TX_PWR_CFG_RATE5, txpower);






  txpower = rt2x00_get_field16(eeprom,
          EEPROM_TXPOWER_BYRATE_RATE2);
  txpower = rt2800_compensate_txpower(rt2x00dev, is_rate_b, band,
          power_level, txpower, delta);
  rt2x00_set_field32(&reg, TX_PWR_CFG_RATE6, txpower);






  txpower = rt2x00_get_field16(eeprom,
          EEPROM_TXPOWER_BYRATE_RATE3);
  txpower = rt2800_compensate_txpower(rt2x00dev, is_rate_b, band,
          power_level, txpower, delta);
  rt2x00_set_field32(&reg, TX_PWR_CFG_RATE7, txpower);

  rt2800_register_write(rt2x00dev, offset, reg);


  offset += 4;
 }
}
