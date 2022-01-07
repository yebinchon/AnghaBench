
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hw_mode_spec {int supported_rates; int num_channels; struct channel_info* channels_info; int supported_bands; int channels; } ;
struct rt2x00_dev {TYPE_2__* hw; int dev; struct hw_mode_spec spec; } ;
struct channel_info {void* default_power1; void* max_power; } ;
struct TYPE_6__ {int max_rates; int max_report_rates; int max_rate_tries; TYPE_1__* wiphy; } ;
struct TYPE_5__ {int flags; } ;


 int ARRAY_SIZE (int ) ;
 int EEPROM_MAC_ADDR_0 ;
 int EEPROM_TXPOWER_A_START ;
 int EEPROM_TXPOWER_G_START ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HOST_BROADCAST_PS_BUFFERING ;
 void* MAX_TXPOWER ;
 int PS_NULLFUNC_STACK ;
 int RF5225 ;
 int RF5325 ;
 int SET_IEEE80211_DEV (TYPE_2__*,int ) ;
 int SET_IEEE80211_PERM_ADDR (TYPE_2__*,char*) ;
 int SIGNAL_DBM ;
 int SUPPORTS_PS ;
 int SUPPORT_BAND_2GHZ ;
 int SUPPORT_BAND_5GHZ ;
 int SUPPORT_RATE_CCK ;
 int SUPPORT_RATE_OFDM ;
 void* TXPOWER_FROM_DEV (char) ;
 int WIPHY_FLAG_PS_ON_BY_DEFAULT ;
 int ieee80211_hw_set (TYPE_2__*,int ) ;
 struct channel_info* kcalloc (int,int,int ) ;
 int rf_vals_noseq ;
 int rf_vals_seq ;
 char* rt2x00_eeprom_addr (struct rt2x00_dev*,int ) ;
 int rt2x00_has_cap_rf_sequence (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_rf (struct rt2x00_dev*,int ) ;

__attribute__((used)) static int rt61pci_probe_hw_mode(struct rt2x00_dev *rt2x00dev)
{
 struct hw_mode_spec *spec = &rt2x00dev->spec;
 struct channel_info *info;
 char *tx_power;
 unsigned int i;




 rt2x00dev->hw->wiphy->flags &= ~WIPHY_FLAG_PS_ON_BY_DEFAULT;




 ieee80211_hw_set(rt2x00dev->hw, PS_NULLFUNC_STACK);
 ieee80211_hw_set(rt2x00dev->hw, SUPPORTS_PS);
 ieee80211_hw_set(rt2x00dev->hw, HOST_BROADCAST_PS_BUFFERING);
 ieee80211_hw_set(rt2x00dev->hw, SIGNAL_DBM);

 SET_IEEE80211_DEV(rt2x00dev->hw, rt2x00dev->dev);
 SET_IEEE80211_PERM_ADDR(rt2x00dev->hw,
    rt2x00_eeprom_addr(rt2x00dev,
         EEPROM_MAC_ADDR_0));
 rt2x00dev->hw->max_rates = 1;
 rt2x00dev->hw->max_report_rates = 7;
 rt2x00dev->hw->max_rate_tries = 1;




 spec->supported_bands = SUPPORT_BAND_2GHZ;
 spec->supported_rates = SUPPORT_RATE_CCK | SUPPORT_RATE_OFDM;

 if (!rt2x00_has_cap_rf_sequence(rt2x00dev)) {
  spec->num_channels = 14;
  spec->channels = rf_vals_noseq;
 } else {
  spec->num_channels = 14;
  spec->channels = rf_vals_seq;
 }

 if (rt2x00_rf(rt2x00dev, RF5225) || rt2x00_rf(rt2x00dev, RF5325)) {
  spec->supported_bands |= SUPPORT_BAND_5GHZ;
  spec->num_channels = ARRAY_SIZE(rf_vals_seq);
 }




 info = kcalloc(spec->num_channels, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 spec->channels_info = info;

 tx_power = rt2x00_eeprom_addr(rt2x00dev, EEPROM_TXPOWER_G_START);
 for (i = 0; i < 14; i++) {
  info[i].max_power = MAX_TXPOWER;
  info[i].default_power1 = TXPOWER_FROM_DEV(tx_power[i]);
 }

 if (spec->num_channels > 14) {
  tx_power = rt2x00_eeprom_addr(rt2x00dev, EEPROM_TXPOWER_A_START);
  for (i = 14; i < spec->num_channels; i++) {
   info[i].max_power = MAX_TXPOWER;
   info[i].default_power1 =
     TXPOWER_FROM_DEV(tx_power[i - 14]);
  }
 }

 return 0;
}
