
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rt2x00_dev {int flags; } ;
struct ieee80211_channel {int band; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int CONFIG_CHANNEL_HT40 ;
 int EEPROM_TXPOWER_BYRATE ;
 scalar_t__ TX_PWR_CFG_0 ;
 int TX_PWR_CFG_1 ;
 int TX_PWR_CFG_1B_48MBS ;
 int TX_PWR_CFG_2 ;
 int TX_PWR_CFG_2B_MCS6_MCS7 ;
 int TX_PWR_CFG_3 ;
 int TX_PWR_CFG_3B_MCS14 ;
 int TX_PWR_CFG_4 ;
 int TX_PWR_CFG_4B_STBC_MCS6 ;
 scalar_t__ TX_PWR_CFG_7 ;
 int TX_PWR_CFG_7B_54MBS ;
 int TX_PWR_CFG_7B_MCS7 ;
 scalar_t__ TX_PWR_CFG_8 ;
 int TX_PWR_CFG_8B_MCS15 ;
 scalar_t__ TX_PWR_CFG_9 ;
 int TX_PWR_CFG_9B_STBC_MCS7 ;
 int rt2800_config_alc (struct rt2x00_dev*,struct ieee80211_channel*,int) ;
 int rt2800_eeprom_read_from_array (struct rt2x00_dev*,int ,int) ;
 int rt2800_get_txpower_bw_comp (struct rt2x00_dev*,int) ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2800_register_write (struct rt2x00_dev*,scalar_t__,int) ;
 int rt2x00_get_field32 (int,int ) ;
 int rt2x00_set_field32 (int*,int ,int) ;
 int rt2x00_warn (struct rt2x00_dev*,char*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void rt2800_config_txpower_rt6352(struct rt2x00_dev *rt2x00dev,
      struct ieee80211_channel *chan,
      int power_level)
{
 u32 reg, pwreg;
 u16 eeprom;
 u32 data, gdata;
 u8 t, i;
 enum nl80211_band band = chan->band;
 int delta;


 delta = rt2800_get_txpower_bw_comp(rt2x00dev, band);

 if (delta)
  rt2x00_warn(rt2x00dev, "ignoring EEPROM HT40 power delta: %d\n",
       delta);
 for (i = 0; i < 5; i++) {
  eeprom = rt2800_eeprom_read_from_array(rt2x00dev,
             EEPROM_TXPOWER_BYRATE,
             i * 2);

  data = eeprom;

  t = eeprom & 0x3f;
  if (t == 32)
   t++;

  gdata = t;

  t = (eeprom & 0x3f00) >> 8;
  if (t == 32)
   t++;

  gdata |= (t << 8);

  eeprom = rt2800_eeprom_read_from_array(rt2x00dev,
             EEPROM_TXPOWER_BYRATE,
             (i * 2) + 1);

  t = eeprom & 0x3f;
  if (t == 32)
   t++;

  gdata |= (t << 16);

  t = (eeprom & 0x3f00) >> 8;
  if (t == 32)
   t++;

  gdata |= (t << 24);
  data |= (eeprom << 16);

  if (!test_bit(CONFIG_CHANNEL_HT40, &rt2x00dev->flags)) {

   if (data != 0xffffffff)
    rt2800_register_write(rt2x00dev,
            TX_PWR_CFG_0 + (i * 4),
            data);
  } else {

   if (gdata != 0xffffffff)
    rt2800_register_write(rt2x00dev,
            TX_PWR_CFG_0 + (i * 4),
            gdata);
  }
 }
 pwreg = 0;
 reg = rt2800_register_read(rt2x00dev, TX_PWR_CFG_1);
 t = rt2x00_get_field32(reg, TX_PWR_CFG_1B_48MBS);
 rt2x00_set_field32(&pwreg, TX_PWR_CFG_7B_54MBS, t);


 reg = rt2800_register_read(rt2x00dev, TX_PWR_CFG_2);
 t = rt2x00_get_field32(reg, TX_PWR_CFG_2B_MCS6_MCS7);
 rt2x00_set_field32(&pwreg, TX_PWR_CFG_7B_MCS7, t);
 rt2800_register_write(rt2x00dev, TX_PWR_CFG_7, pwreg);


 pwreg = 0;
 reg = rt2800_register_read(rt2x00dev, TX_PWR_CFG_3);
 t = rt2x00_get_field32(reg, TX_PWR_CFG_3B_MCS14);
 rt2x00_set_field32(&pwreg, TX_PWR_CFG_8B_MCS15, t);
 rt2800_register_write(rt2x00dev, TX_PWR_CFG_8, pwreg);


 pwreg = 0;
 reg = rt2800_register_read(rt2x00dev, TX_PWR_CFG_4);
 t = rt2x00_get_field32(reg, TX_PWR_CFG_4B_STBC_MCS6);
 rt2x00_set_field32(&pwreg, TX_PWR_CFG_9B_STBC_MCS7, t);
 rt2800_register_write(rt2x00dev, TX_PWR_CFG_9, pwreg);

 rt2800_config_alc(rt2x00dev, chan, power_level);


}
