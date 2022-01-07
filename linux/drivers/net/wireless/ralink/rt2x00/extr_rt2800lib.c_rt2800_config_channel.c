
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int tx_chain_num; int rx_chain_num; } ;
struct TYPE_3__ {int rt; int rf; } ;
struct rt2x00_dev {int lna_gain; TYPE_2__ default_ant; TYPE_1__ chip; } ;
struct rf_channel {int channel; } ;
struct ieee80211_conf {int dummy; } ;
struct channel_info {void* default_power3; void* default_power2; void* default_power1; } ;


 int BBP3_HT40_MINUS ;
 int BBP49_UPDATE_FLAG ;
 int BBP4_BANDWIDTH ;
 int CH_BUSY_STA ;
 int CH_BUSY_STA_SEC ;
 int CH_IDLE_STA ;
 int GPIO_CTRL ;
 int GPIO_CTRL_DIR4 ;
 int GPIO_CTRL_DIR7 ;
 int GPIO_CTRL_DIR8 ;
 int GPIO_CTRL_VAL4 ;
 int GPIO_CTRL_VAL7 ;
 int GPIO_CTRL_VAL8 ;
 int REV_RT2860C ;
 int RF3322_RFCSR30_RX_H20M ;
 int RF3322_RFCSR30_TX_H20M ;
 int RFCSR30_RX_H20M ;
 int RFCSR30_TX_H20M ;
 int RFCSR3_VCOCAL_EN ;
 int RT2860 ;
 int const RT3352 ;
 int const RT3572 ;
 int const RT3593 ;

 int const RT5350 ;
 int const RT5390 ;
 int const RT5392 ;
 int const RT5592 ;
 int const RT6352 ;
 int TX_BAND_CFG ;
 int TX_BAND_CFG_A ;
 int TX_BAND_CFG_BG ;
 int TX_BAND_CFG_HT40_MINUS ;
 int TX_PIN_CFG ;
 int TX_PIN_CFG_LNA_PE_A0_EN ;
 int TX_PIN_CFG_LNA_PE_A1_EN ;
 int TX_PIN_CFG_LNA_PE_A2_EN ;
 int TX_PIN_CFG_LNA_PE_G0_EN ;
 int TX_PIN_CFG_LNA_PE_G1_EN ;
 int TX_PIN_CFG_LNA_PE_G2_EN ;
 int TX_PIN_CFG_PA_PE_A0_EN ;
 int TX_PIN_CFG_PA_PE_A1_EN ;
 int TX_PIN_CFG_PA_PE_A2_EN ;
 int TX_PIN_CFG_PA_PE_G0_EN ;
 int TX_PIN_CFG_PA_PE_G1_EN ;
 int TX_PIN_CFG_PA_PE_G2_EN ;
 int TX_PIN_CFG_RFRX_EN ;
 int TX_PIN_CFG_RFTR_EN ;
 int TX_PIN_CFG_TRSW_EN ;
 int conf_is_ht40 (struct ieee80211_conf*) ;
 int conf_is_ht40_minus (struct ieee80211_conf*) ;
 int rt2800_bbp_read (struct rt2x00_dev*,int) ;
 int rt2800_bbp_write (struct rt2x00_dev*,int,int) ;
 int rt2800_bbp_write_with_rx_chain (struct rt2x00_dev*,int,int) ;
 int rt2800_config_channel_rf2xxx (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ;
 int rt2800_config_channel_rf3052 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ;
 int rt2800_config_channel_rf3053 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ;
 int rt2800_config_channel_rf3290 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ;
 int rt2800_config_channel_rf3322 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ;
 int rt2800_config_channel_rf3853 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ;
 int rt2800_config_channel_rf3xxx (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ;
 int rt2800_config_channel_rf53xx (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ;
 int rt2800_config_channel_rf55xx (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ;
 int rt2800_config_channel_rf7620 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ;
 int rt2800_iq_calibrate (struct rt2x00_dev*,int) ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int) ;
 int rt2800_rfcsr_read (struct rt2x00_dev*,int) ;
 int rt2800_rfcsr_write (struct rt2x00_dev*,int,int) ;
 void* rt2800_txpower_to_dev (struct rt2x00_dev*,int,void*) ;
 int rt2x00_has_cap_bt_coexist (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_has_cap_external_lna_a (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_has_cap_external_lna_bg (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_is_pcie (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_is_usb (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_rf (struct rt2x00_dev*,int const) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int const) ;
 scalar_t__ rt2x00_rt_rev (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_field32 (int*,int ,int) ;
 int rt2x00_set_field8 (int*,int ,int) ;
 int rt3883_bbp_adjust (struct rt2x00_dev*,struct rf_channel*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void rt2800_config_channel(struct rt2x00_dev *rt2x00dev,
      struct ieee80211_conf *conf,
      struct rf_channel *rf,
      struct channel_info *info)
{
 u32 reg;
 u32 tx_pin;
 u8 bbp, rfcsr;

 info->default_power1 = rt2800_txpower_to_dev(rt2x00dev, rf->channel,
           info->default_power1);
 info->default_power2 = rt2800_txpower_to_dev(rt2x00dev, rf->channel,
           info->default_power2);
 if (rt2x00dev->default_ant.tx_chain_num > 2)
  info->default_power3 =
   rt2800_txpower_to_dev(rt2x00dev, rf->channel,
           info->default_power3);

 switch (rt2x00dev->chip.rt) {
 case 128:
  rt3883_bbp_adjust(rt2x00dev, rf);
  break;
 }

 switch (rt2x00dev->chip.rf) {
 case 148:
 case 147:
 case 146:
 case 145:
 case 140:
  rt2800_config_channel_rf3xxx(rt2x00dev, conf, rf, info);
  break;
 case 144:
  rt2800_config_channel_rf3052(rt2x00dev, conf, rf, info);
  break;
 case 143:
  rt2800_config_channel_rf3053(rt2x00dev, conf, rf, info);
  break;
 case 141:
  rt2800_config_channel_rf3290(rt2x00dev, conf, rf, info);
  break;
 case 139:
  rt2800_config_channel_rf3322(rt2x00dev, conf, rf, info);
  break;
 case 138:
  rt2800_config_channel_rf3853(rt2x00dev, conf, rf, info);
  break;
 case 142:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
  rt2800_config_channel_rf53xx(rt2x00dev, conf, rf, info);
  break;
 case 130:
  rt2800_config_channel_rf55xx(rt2x00dev, conf, rf, info);
  break;
 case 129:
  rt2800_config_channel_rf7620(rt2x00dev, conf, rf, info);
  break;
 default:
  rt2800_config_channel_rf2xxx(rt2x00dev, conf, rf, info);
 }

 if (rt2x00_rf(rt2x00dev, 142) ||
     rt2x00_rf(rt2x00dev, 141) ||
     rt2x00_rf(rt2x00dev, 139) ||
     rt2x00_rf(rt2x00dev, 137) ||
     rt2x00_rf(rt2x00dev, 136) ||
     rt2x00_rf(rt2x00dev, 135) ||
     rt2x00_rf(rt2x00dev, 134) ||
     rt2x00_rf(rt2x00dev, 133) ||
     rt2x00_rf(rt2x00dev, 132) ||
     rt2x00_rf(rt2x00dev, 131)) {
  rfcsr = rt2800_rfcsr_read(rt2x00dev, 30);
  if (rt2x00_rf(rt2x00dev, 139)) {
   rt2x00_set_field8(&rfcsr, RF3322_RFCSR30_TX_H20M,
       conf_is_ht40(conf));
   rt2x00_set_field8(&rfcsr, RF3322_RFCSR30_RX_H20M,
       conf_is_ht40(conf));
  } else {
   rt2x00_set_field8(&rfcsr, RFCSR30_TX_H20M,
       conf_is_ht40(conf));
   rt2x00_set_field8(&rfcsr, RFCSR30_RX_H20M,
       conf_is_ht40(conf));
  }
  rt2800_rfcsr_write(rt2x00dev, 30, rfcsr);

  rfcsr = rt2800_rfcsr_read(rt2x00dev, 3);
  rt2x00_set_field8(&rfcsr, RFCSR3_VCOCAL_EN, 1);
  rt2800_rfcsr_write(rt2x00dev, 3, rfcsr);
 }





 if (rt2x00_rt(rt2x00dev, RT3352)) {
  rt2800_bbp_write(rt2x00dev, 62, 0x37 - rt2x00dev->lna_gain);
  rt2800_bbp_write(rt2x00dev, 63, 0x37 - rt2x00dev->lna_gain);
  rt2800_bbp_write(rt2x00dev, 64, 0x37 - rt2x00dev->lna_gain);

  rt2800_bbp_write(rt2x00dev, 27, 0x0);
  rt2800_bbp_write(rt2x00dev, 66, 0x26 + rt2x00dev->lna_gain);
  rt2800_bbp_write(rt2x00dev, 27, 0x20);
  rt2800_bbp_write(rt2x00dev, 66, 0x26 + rt2x00dev->lna_gain);
  rt2800_bbp_write(rt2x00dev, 86, 0x38);
  rt2800_bbp_write(rt2x00dev, 83, 0x6a);
 } else if (rt2x00_rt(rt2x00dev, RT3593)) {
  if (rf->channel > 14) {

   rt2800_bbp_write(rt2x00dev, 70, 0x00);
  } else {
   rt2800_bbp_write(rt2x00dev, 70, 0x0a);
  }

  if (conf_is_ht40(conf))
   rt2800_bbp_write(rt2x00dev, 105, 0x04);
  else
   rt2800_bbp_write(rt2x00dev, 105, 0x34);

  rt2800_bbp_write(rt2x00dev, 62, 0x37 - rt2x00dev->lna_gain);
  rt2800_bbp_write(rt2x00dev, 63, 0x37 - rt2x00dev->lna_gain);
  rt2800_bbp_write(rt2x00dev, 64, 0x37 - rt2x00dev->lna_gain);
  rt2800_bbp_write(rt2x00dev, 77, 0x98);
 } else if (rt2x00_rt(rt2x00dev, 128)) {
  rt2800_bbp_write(rt2x00dev, 62, 0x37 - rt2x00dev->lna_gain);
  rt2800_bbp_write(rt2x00dev, 63, 0x37 - rt2x00dev->lna_gain);
  rt2800_bbp_write(rt2x00dev, 64, 0x37 - rt2x00dev->lna_gain);

  if (rt2x00dev->default_ant.rx_chain_num > 1)
   rt2800_bbp_write(rt2x00dev, 86, 0x46);
  else
   rt2800_bbp_write(rt2x00dev, 86, 0);
 } else {
  rt2800_bbp_write(rt2x00dev, 62, 0x37 - rt2x00dev->lna_gain);
  rt2800_bbp_write(rt2x00dev, 63, 0x37 - rt2x00dev->lna_gain);
  rt2800_bbp_write(rt2x00dev, 64, 0x37 - rt2x00dev->lna_gain);
  rt2800_bbp_write(rt2x00dev, 86, 0);
 }

 if (rf->channel <= 14) {
  if (!rt2x00_rt(rt2x00dev, RT5390) &&
      !rt2x00_rt(rt2x00dev, RT5392) &&
      !rt2x00_rt(rt2x00dev, RT6352)) {
   if (rt2x00_has_cap_external_lna_bg(rt2x00dev)) {
    rt2800_bbp_write(rt2x00dev, 82, 0x62);
    rt2800_bbp_write(rt2x00dev, 82, 0x62);
    rt2800_bbp_write(rt2x00dev, 75, 0x46);
   } else {
    if (rt2x00_rt(rt2x00dev, RT3593))
     rt2800_bbp_write(rt2x00dev, 82, 0x62);
    else
     rt2800_bbp_write(rt2x00dev, 82, 0x84);
    rt2800_bbp_write(rt2x00dev, 75, 0x50);
   }
   if (rt2x00_rt(rt2x00dev, RT3593) ||
       rt2x00_rt(rt2x00dev, 128))
    rt2800_bbp_write(rt2x00dev, 83, 0x8a);
  }

 } else {
  if (rt2x00_rt(rt2x00dev, RT3572))
   rt2800_bbp_write(rt2x00dev, 82, 0x94);
  else if (rt2x00_rt(rt2x00dev, RT3593) ||
    rt2x00_rt(rt2x00dev, 128))
   rt2800_bbp_write(rt2x00dev, 82, 0x82);
  else if (!rt2x00_rt(rt2x00dev, RT6352))
   rt2800_bbp_write(rt2x00dev, 82, 0xf2);

  if (rt2x00_rt(rt2x00dev, RT3593) ||
      rt2x00_rt(rt2x00dev, 128))
   rt2800_bbp_write(rt2x00dev, 83, 0x9a);

  if (rt2x00_has_cap_external_lna_a(rt2x00dev))
   rt2800_bbp_write(rt2x00dev, 75, 0x46);
  else
   rt2800_bbp_write(rt2x00dev, 75, 0x50);
 }

 reg = rt2800_register_read(rt2x00dev, TX_BAND_CFG);
 rt2x00_set_field32(&reg, TX_BAND_CFG_HT40_MINUS, conf_is_ht40_minus(conf));
 rt2x00_set_field32(&reg, TX_BAND_CFG_A, rf->channel > 14);
 rt2x00_set_field32(&reg, TX_BAND_CFG_BG, rf->channel <= 14);
 rt2800_register_write(rt2x00dev, TX_BAND_CFG, reg);

 if (rt2x00_rt(rt2x00dev, RT3572))
  rt2800_rfcsr_write(rt2x00dev, 8, 0);

 if (rt2x00_rt(rt2x00dev, RT6352)) {
  tx_pin = rt2800_register_read(rt2x00dev, TX_PIN_CFG);
  rt2x00_set_field32(&tx_pin, TX_PIN_CFG_RFRX_EN, 1);
 } else {
  tx_pin = 0;
 }

 switch (rt2x00dev->default_ant.tx_chain_num) {
 case 3:

  rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_A2_EN,
       rf->channel > 14);
  rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_G2_EN,
       rf->channel <= 14);

 case 2:

  rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_A1_EN,
       rf->channel > 14);
  rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_G1_EN,
       rf->channel <= 14);

 case 1:

  rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_A0_EN,
       rf->channel > 14);
  if (rt2x00_has_cap_bt_coexist(rt2x00dev))
   rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_G0_EN, 1);
  else
   rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_G0_EN,
        rf->channel <= 14);
  break;
 }

 switch (rt2x00dev->default_ant.rx_chain_num) {
 case 3:

  rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_A2_EN, 1);
  rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_G2_EN, 1);

 case 2:

  rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_A1_EN, 1);
  rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_G1_EN, 1);

 case 1:

  rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_A0_EN, 1);
  rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_G0_EN, 1);
  break;
 }

 rt2x00_set_field32(&tx_pin, TX_PIN_CFG_RFTR_EN, 1);
 rt2x00_set_field32(&tx_pin, TX_PIN_CFG_TRSW_EN, 1);

 rt2800_register_write(rt2x00dev, TX_PIN_CFG, tx_pin);

 if (rt2x00_rt(rt2x00dev, RT3572)) {
  rt2800_rfcsr_write(rt2x00dev, 8, 0x80);


  if (rf->channel <= 14)
   reg = 0x1c + (2 * rt2x00dev->lna_gain);
  else
   reg = 0x22 + ((rt2x00dev->lna_gain * 5) / 3);

  rt2800_bbp_write_with_rx_chain(rt2x00dev, 66, reg);
 }

 if (rt2x00_rt(rt2x00dev, RT3593)) {
  reg = rt2800_register_read(rt2x00dev, GPIO_CTRL);


  if (rt2x00_is_usb(rt2x00dev) ||
      rt2x00_is_pcie(rt2x00dev)) {

   rt2x00_set_field32(&reg, GPIO_CTRL_DIR8, 0);
   if (rf->channel <= 14)
    rt2x00_set_field32(&reg, GPIO_CTRL_VAL8, 1);
   else
    rt2x00_set_field32(&reg, GPIO_CTRL_VAL8, 0);
  }


  if (rt2x00_is_usb(rt2x00dev)) {



   rt2x00_set_field32(&reg, GPIO_CTRL_DIR4, 0);
   rt2x00_set_field32(&reg, GPIO_CTRL_DIR7, 0);

   rt2x00_set_field32(&reg, GPIO_CTRL_VAL4, 1);
   rt2x00_set_field32(&reg, GPIO_CTRL_VAL7, 1);
  } else if (rt2x00_is_pcie(rt2x00dev)) {

   rt2x00_set_field32(&reg, GPIO_CTRL_DIR4, 0);
   rt2x00_set_field32(&reg, GPIO_CTRL_VAL4, 1);
  }

  rt2800_register_write(rt2x00dev, GPIO_CTRL, reg);


  if (rf->channel <= 14)
   reg = 0x1c + 2 * rt2x00dev->lna_gain;
  else
   reg = 0x22 + ((rt2x00dev->lna_gain * 5) / 3);

  rt2800_bbp_write_with_rx_chain(rt2x00dev, 66, reg);

  usleep_range(1000, 1500);
 }

 if (rt2x00_rt(rt2x00dev, 128)) {
  if (!conf_is_ht40(conf))
   rt2800_bbp_write(rt2x00dev, 105, 0x34);
  else
   rt2800_bbp_write(rt2x00dev, 105, 0x04);


  if (rf->channel <= 14)
   reg = 0x2e + rt2x00dev->lna_gain;
  else
   reg = 0x20 + ((rt2x00dev->lna_gain * 5) / 3);

  rt2800_bbp_write_with_rx_chain(rt2x00dev, 66, reg);

  usleep_range(1000, 1500);
 }

 if (rt2x00_rt(rt2x00dev, RT5592) || rt2x00_rt(rt2x00dev, RT6352)) {
  reg = 0x10;
  if (!conf_is_ht40(conf)) {
   if (rt2x00_rt(rt2x00dev, RT6352) &&
       rt2x00_has_cap_external_lna_bg(rt2x00dev)) {
    reg |= 0x5;
   } else {
    reg |= 0xa;
   }
  }
  rt2800_bbp_write(rt2x00dev, 195, 141);
  rt2800_bbp_write(rt2x00dev, 196, reg);






  reg = (rf->channel <= 14 ? 0x1c : 0x24) + 2*rt2x00dev->lna_gain;
  rt2800_bbp_write_with_rx_chain(rt2x00dev, 66, reg);

  rt2800_iq_calibrate(rt2x00dev, rf->channel);
 }

 bbp = rt2800_bbp_read(rt2x00dev, 4);
 rt2x00_set_field8(&bbp, BBP4_BANDWIDTH, 2 * conf_is_ht40(conf));
 rt2800_bbp_write(rt2x00dev, 4, bbp);

 bbp = rt2800_bbp_read(rt2x00dev, 3);
 rt2x00_set_field8(&bbp, BBP3_HT40_MINUS, conf_is_ht40_minus(conf));
 rt2800_bbp_write(rt2x00dev, 3, bbp);

 if (rt2x00_rt_rev(rt2x00dev, RT2860, REV_RT2860C)) {
  if (conf_is_ht40(conf)) {
   rt2800_bbp_write(rt2x00dev, 69, 0x1a);
   rt2800_bbp_write(rt2x00dev, 70, 0x0a);
   rt2800_bbp_write(rt2x00dev, 73, 0x16);
  } else {
   rt2800_bbp_write(rt2x00dev, 69, 0x16);
   rt2800_bbp_write(rt2x00dev, 70, 0x08);
   rt2800_bbp_write(rt2x00dev, 73, 0x11);
  }
 }

 usleep_range(1000, 1500);




 reg = rt2800_register_read(rt2x00dev, CH_IDLE_STA);
 reg = rt2800_register_read(rt2x00dev, CH_BUSY_STA);
 reg = rt2800_register_read(rt2x00dev, CH_BUSY_STA_SEC);




 if (rt2x00_rt(rt2x00dev, RT3352) ||
     rt2x00_rt(rt2x00dev, RT5350)) {
  bbp = rt2800_bbp_read(rt2x00dev, 49);
  rt2x00_set_field8(&bbp, BBP49_UPDATE_FLAG, 0);
  rt2800_bbp_write(rt2x00dev, 49, bbp);
 }
}
