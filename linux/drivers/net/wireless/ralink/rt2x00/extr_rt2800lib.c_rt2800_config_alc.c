
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_channel {int max_power; int center_freq; } ;


 int EEPROM_NIC_CONF1 ;
 int EEPROM_NIC_CONF1_INTERNAL_TX_ALC ;
 int EEPROM_TXPOWER_INIT ;
 int MAC_STATUS_CFG ;
 int MAC_SYS_CTRL ;
 int TX_ALC_CFG_0 ;
 int TX_ALC_CFG_0_CH_INIT_0 ;
 int TX_ALC_CFG_0_CH_INIT_1 ;
 int TX_ALC_CFG_0_LIMIT_0 ;
 int TX_ALC_CFG_0_LIMIT_1 ;
 int TX_ALC_CFG_1 ;
 int TX_ALC_CFG_1_TX_TEMP_COMP ;
 int rt2800_bbp_read (struct rt2x00_dev*,int) ;
 int rt2800_bbp_write (struct rt2x00_dev*,int,int) ;
 int rt2800_eeprom_read (struct rt2x00_dev*,int ) ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int) ;
 int rt2800_rfcsr_write (struct rt2x00_dev*,int,int) ;
 int rt2800_vco_calibration (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_get_field16 (int,int ) ;
 scalar_t__ rt2x00_has_cap_external_lna_bg (struct rt2x00_dev*) ;
 int rt2x00_set_field32 (int*,int ,int) ;
 int rt2x00_warn (struct rt2x00_dev*,char*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void rt2800_config_alc(struct rt2x00_dev *rt2x00dev,
         struct ieee80211_channel *chan,
         int power_level) {
 u16 eeprom, target_power, max_power;
 u32 mac_sys_ctrl, mac_status;
 u32 reg;
 u8 bbp;
 int i;


 power_level *= 2;
 if (power_level > 0x2f)
  power_level = 0x2f;

 max_power = chan->max_power * 2;
 if (max_power > 0x2f)
  max_power = 0x2f;

 reg = rt2800_register_read(rt2x00dev, TX_ALC_CFG_0);
 rt2x00_set_field32(&reg, TX_ALC_CFG_0_CH_INIT_0, power_level);
 rt2x00_set_field32(&reg, TX_ALC_CFG_0_CH_INIT_1, power_level);
 rt2x00_set_field32(&reg, TX_ALC_CFG_0_LIMIT_0, max_power);
 rt2x00_set_field32(&reg, TX_ALC_CFG_0_LIMIT_1, max_power);

 eeprom = rt2800_eeprom_read(rt2x00dev, EEPROM_NIC_CONF1);
 if (rt2x00_get_field16(eeprom, EEPROM_NIC_CONF1_INTERNAL_TX_ALC)) {

  target_power = rt2800_eeprom_read(rt2x00dev,
        EEPROM_TXPOWER_INIT);
  rt2x00_set_field32(&reg, TX_ALC_CFG_0_CH_INIT_0, target_power);
  rt2x00_set_field32(&reg, TX_ALC_CFG_0_CH_INIT_1, target_power);
 }
 rt2800_register_write(rt2x00dev, TX_ALC_CFG_0, reg);

 reg = rt2800_register_read(rt2x00dev, TX_ALC_CFG_1);
 rt2x00_set_field32(&reg, TX_ALC_CFG_1_TX_TEMP_COMP, 0);
 rt2800_register_write(rt2x00dev, TX_ALC_CFG_1, reg);


 mac_sys_ctrl = rt2800_register_read(rt2x00dev, MAC_SYS_CTRL);

 rt2800_register_write(rt2x00dev, MAC_SYS_CTRL, 0);

 for (i = 0; i < 10000; i++) {
  mac_status = rt2800_register_read(rt2x00dev, MAC_STATUS_CFG);
  if (mac_status & 0x3)
   usleep_range(50, 200);
  else
   break;
 }

 if (i == 10000)
  rt2x00_warn(rt2x00dev, "Wait MAC Status to MAX !!!\n");

 if (chan->center_freq > 2457) {
  bbp = rt2800_bbp_read(rt2x00dev, 30);
  bbp = 0x40;
  rt2800_bbp_write(rt2x00dev, 30, bbp);
  rt2800_rfcsr_write(rt2x00dev, 39, 0);
  if (rt2x00_has_cap_external_lna_bg(rt2x00dev))
   rt2800_rfcsr_write(rt2x00dev, 42, 0xfb);
  else
   rt2800_rfcsr_write(rt2x00dev, 42, 0x7b);
 } else {
  bbp = rt2800_bbp_read(rt2x00dev, 30);
  bbp = 0x1f;
  rt2800_bbp_write(rt2x00dev, 30, bbp);
  rt2800_rfcsr_write(rt2x00dev, 39, 0x80);
  if (rt2x00_has_cap_external_lna_bg(rt2x00dev))
   rt2800_rfcsr_write(rt2x00dev, 42, 0xdb);
  else
   rt2800_rfcsr_write(rt2x00dev, 42, 0x5b);
 }
 rt2800_register_write(rt2x00dev, MAC_SYS_CTRL, mac_sys_ctrl);

 rt2800_vco_calibration(rt2x00dev);
}
