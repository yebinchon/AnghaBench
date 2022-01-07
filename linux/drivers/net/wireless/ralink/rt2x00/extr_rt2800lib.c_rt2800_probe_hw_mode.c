
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_11__ {int rf; } ;
struct TYPE_13__ {unsigned int tx_chain_num; unsigned int rx_chain_num; } ;
struct TYPE_9__ {unsigned int tx_params; int* rx_mask; } ;
struct TYPE_12__ {int ht_supported; int cap; int ampdu_factor; int ampdu_density; TYPE_1__ mcs; } ;
struct hw_mode_spec {int supported_rates; int num_channels; struct channel_info* channels_info; TYPE_4__ ht; int supported_bands; void* channels; } ;
struct rt2x00_dev {int cap_flags; TYPE_3__ chip; TYPE_5__ default_ant; TYPE_6__* hw; int dev; struct hw_mode_spec spec; } ;
struct channel_info {char default_power1; char default_power2; char default_power3; } ;
struct TYPE_14__ {int max_rates; int max_report_rates; int max_rate_tries; TYPE_2__* wiphy; } ;
struct TYPE_10__ {int retry_short; int retry_long; int flags; } ;


 int AMPDU_AGGREGATION ;
 void* ARRAY_SIZE (void*) ;
 int CAPABILITY_VCO_RECALIBRATION ;
 int EEPROM_EXT_TXPOWER_A3 ;
 int EEPROM_EXT_TXPOWER_BG3 ;
 int EEPROM_MAC_ADDR_0 ;
 int EEPROM_TXPOWER_A1 ;
 int EEPROM_TXPOWER_A2 ;
 int EEPROM_TXPOWER_BG1 ;
 int EEPROM_TXPOWER_BG2 ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HOST_BROADCAST_PS_BUFFERING ;
 int IEEE80211_HT_CAP_GRN_FLD ;
 unsigned int IEEE80211_HT_CAP_RX_STBC_SHIFT ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 unsigned int IEEE80211_HT_CAP_TX_STBC ;
 unsigned int IEEE80211_HT_MCS_TX_DEFINED ;
 unsigned int IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT ;
 unsigned int IEEE80211_HT_MCS_TX_RX_DIFF ;
 int MAC_DEBUG_INDEX ;
 int MAC_DEBUG_INDEX_XTAL ;
 int MFP_CAPABLE ;
 int PS_NULLFUNC_STACK ;
 int REPORTS_TX_ACK_STATUS ;
 int SET_IEEE80211_DEV (TYPE_6__*,int ) ;
 int SET_IEEE80211_PERM_ADDR (TYPE_6__*,char*) ;
 int SIGNAL_DBM ;
 int SUPPORTS_PS ;
 int SUPPORT_BAND_2GHZ ;
 int SUPPORT_BAND_5GHZ ;
 int SUPPORT_RATE_CCK ;
 int SUPPORT_RATE_OFDM ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int WIPHY_FLAG_PS_ON_BY_DEFAULT ;
 int __set_bit (int ,int *) ;
 int ieee80211_hw_set (TYPE_6__*,int ) ;
 struct channel_info* kcalloc (int,int,int ) ;
 void* rf_vals ;
 void* rf_vals_3853 ;
 void* rf_vals_3x ;
 void* rf_vals_3x_xtal20 ;
 void* rf_vals_5592_xtal20 ;
 void* rf_vals_5592_xtal40 ;
 void* rf_vals_7620 ;
 int rt2800_clk_is_20mhz (struct rt2x00_dev*) ;
 char* rt2800_eeprom_addr (struct rt2x00_dev*,int ) ;
 scalar_t__ rt2800_hwcrypt_disabled (struct rt2x00_dev*) ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00_is_usb (struct rt2x00_dev*) ;
 int rt2x00_rf (struct rt2x00_dev*,int const) ;

__attribute__((used)) static int rt2800_probe_hw_mode(struct rt2x00_dev *rt2x00dev)
{
 struct hw_mode_spec *spec = &rt2x00dev->spec;
 struct channel_info *info;
 char *default_power1;
 char *default_power2;
 char *default_power3;
 unsigned int i, tx_chains, rx_chains;
 u32 reg;




 rt2x00dev->hw->wiphy->flags &= ~WIPHY_FLAG_PS_ON_BY_DEFAULT;





 rt2x00dev->hw->wiphy->retry_short = 2;
 rt2x00dev->hw->wiphy->retry_long = 2;




 ieee80211_hw_set(rt2x00dev->hw, REPORTS_TX_ACK_STATUS);
 ieee80211_hw_set(rt2x00dev->hw, AMPDU_AGGREGATION);
 ieee80211_hw_set(rt2x00dev->hw, PS_NULLFUNC_STACK);
 ieee80211_hw_set(rt2x00dev->hw, SIGNAL_DBM);
 ieee80211_hw_set(rt2x00dev->hw, SUPPORTS_PS);
 if (!rt2x00_is_usb(rt2x00dev))
  ieee80211_hw_set(rt2x00dev->hw, HOST_BROADCAST_PS_BUFFERING);


 if (rt2800_hwcrypt_disabled(rt2x00dev))
  ieee80211_hw_set(rt2x00dev->hw, MFP_CAPABLE);

 SET_IEEE80211_DEV(rt2x00dev->hw, rt2x00dev->dev);
 SET_IEEE80211_PERM_ADDR(rt2x00dev->hw,
    rt2800_eeprom_addr(rt2x00dev,
         EEPROM_MAC_ADDR_0));
 rt2x00dev->hw->max_rates = 1;
 rt2x00dev->hw->max_report_rates = 7;
 rt2x00dev->hw->max_rate_tries = 1;




 spec->supported_rates = SUPPORT_RATE_CCK | SUPPORT_RATE_OFDM;

 switch (rt2x00dev->chip.rf) {
 case 150:
 case 148:
  spec->num_channels = 14;
  spec->channels = rf_vals;
  break;

 case 149:
 case 147:
  spec->num_channels = ARRAY_SIZE(rf_vals);
  spec->channels = rf_vals;
  break;

 case 151:
 case 146:
 case 145:
 case 144:
 case 141:
 case 140:
 case 139:
 case 138:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
  spec->num_channels = 14;
  if (rt2800_clk_is_20mhz(rt2x00dev))
   spec->channels = rf_vals_3x_xtal20;
  else
   spec->channels = rf_vals_3x;
  break;

 case 128:
  spec->num_channels = ARRAY_SIZE(rf_vals_7620);
  spec->channels = rf_vals_7620;
  break;

 case 143:
 case 142:
  spec->num_channels = ARRAY_SIZE(rf_vals_3x);
  spec->channels = rf_vals_3x;
  break;

 case 137:
  spec->num_channels = ARRAY_SIZE(rf_vals_3853);
  spec->channels = rf_vals_3853;
  break;

 case 129:
  reg = rt2800_register_read(rt2x00dev, MAC_DEBUG_INDEX);
  if (rt2x00_get_field32(reg, MAC_DEBUG_INDEX_XTAL)) {
   spec->num_channels = ARRAY_SIZE(rf_vals_5592_xtal40);
   spec->channels = rf_vals_5592_xtal40;
  } else {
   spec->num_channels = ARRAY_SIZE(rf_vals_5592_xtal20);
   spec->channels = rf_vals_5592_xtal20;
  }
  break;
 }

 if (WARN_ON_ONCE(!spec->channels))
  return -ENODEV;

 spec->supported_bands = SUPPORT_BAND_2GHZ;
 if (spec->num_channels > 14)
  spec->supported_bands |= SUPPORT_BAND_5GHZ;




 if (!rt2x00_rf(rt2x00dev, 151))
  spec->ht.ht_supported = 1;
 else
  spec->ht.ht_supported = 0;

 spec->ht.cap =
     IEEE80211_HT_CAP_SUP_WIDTH_20_40 |
     IEEE80211_HT_CAP_GRN_FLD |
     IEEE80211_HT_CAP_SGI_20 |
     IEEE80211_HT_CAP_SGI_40;

 tx_chains = rt2x00dev->default_ant.tx_chain_num;
 rx_chains = rt2x00dev->default_ant.rx_chain_num;

 if (tx_chains >= 2)
  spec->ht.cap |= IEEE80211_HT_CAP_TX_STBC;

 spec->ht.cap |= rx_chains << IEEE80211_HT_CAP_RX_STBC_SHIFT;

 spec->ht.ampdu_factor = (rx_chains > 1) ? 3 : 2;
 spec->ht.ampdu_density = 4;
 spec->ht.mcs.tx_params = IEEE80211_HT_MCS_TX_DEFINED;
 if (tx_chains != rx_chains) {
  spec->ht.mcs.tx_params |= IEEE80211_HT_MCS_TX_RX_DIFF;
  spec->ht.mcs.tx_params |=
      (tx_chains - 1) << IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT;
 }

 switch (rx_chains) {
 case 3:
  spec->ht.mcs.rx_mask[2] = 0xff;

 case 2:
  spec->ht.mcs.rx_mask[1] = 0xff;

 case 1:
  spec->ht.mcs.rx_mask[0] = 0xff;
  spec->ht.mcs.rx_mask[4] = 0x1;
  break;
 }




 info = kcalloc(spec->num_channels, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 spec->channels_info = info;

 default_power1 = rt2800_eeprom_addr(rt2x00dev, EEPROM_TXPOWER_BG1);
 default_power2 = rt2800_eeprom_addr(rt2x00dev, EEPROM_TXPOWER_BG2);

 if (rt2x00dev->default_ant.tx_chain_num > 2)
  default_power3 = rt2800_eeprom_addr(rt2x00dev,
          EEPROM_EXT_TXPOWER_BG3);
 else
  default_power3 = ((void*)0);

 for (i = 0; i < 14; i++) {
  info[i].default_power1 = default_power1[i];
  info[i].default_power2 = default_power2[i];
  if (default_power3)
   info[i].default_power3 = default_power3[i];
 }

 if (spec->num_channels > 14) {
  default_power1 = rt2800_eeprom_addr(rt2x00dev,
          EEPROM_TXPOWER_A1);
  default_power2 = rt2800_eeprom_addr(rt2x00dev,
          EEPROM_TXPOWER_A2);

  if (rt2x00dev->default_ant.tx_chain_num > 2)
   default_power3 =
    rt2800_eeprom_addr(rt2x00dev,
         EEPROM_EXT_TXPOWER_A3);
  else
   default_power3 = ((void*)0);

  for (i = 14; i < spec->num_channels; i++) {
   info[i].default_power1 = default_power1[i - 14];
   info[i].default_power2 = default_power2[i - 14];
   if (default_power3)
    info[i].default_power3 = default_power3[i - 14];
  }
 }

 switch (rt2x00dev->chip.rf) {
 case 151:
 case 146:
 case 145:
 case 144:
 case 139:
 case 143:
 case 142:
 case 141:
 case 140:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  __set_bit(CAPABILITY_VCO_RECALIBRATION, &rt2x00dev->cap_flags);
  break;
 }

 return 0;
}
