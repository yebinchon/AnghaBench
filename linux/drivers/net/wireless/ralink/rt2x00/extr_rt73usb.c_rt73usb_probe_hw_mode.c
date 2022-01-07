
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_mode_spec {int supported_rates; int num_channels; struct channel_info* channels_info; void* channels; int supported_bands; } ;
struct rt2x00_dev {int hw; int dev; struct hw_mode_spec spec; } ;
struct channel_info {void* default_power1; void* max_power; } ;


 void* ARRAY_SIZE (void*) ;
 int EEPROM_MAC_ADDR_0 ;
 int EEPROM_TXPOWER_A_START ;
 int EEPROM_TXPOWER_G_START ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* MAX_TXPOWER ;
 int PS_NULLFUNC_STACK ;
 int RF2527 ;
 int RF2528 ;
 int RF5225 ;
 int RF5226 ;
 int SET_IEEE80211_DEV (int ,int ) ;
 int SET_IEEE80211_PERM_ADDR (int ,char*) ;
 int SIGNAL_DBM ;
 int SUPPORTS_PS ;
 int SUPPORT_BAND_2GHZ ;
 int SUPPORT_BAND_5GHZ ;
 int SUPPORT_RATE_CCK ;
 int SUPPORT_RATE_OFDM ;
 void* TXPOWER_FROM_DEV (char) ;
 int ieee80211_hw_set (int ,int ) ;
 struct channel_info* kcalloc (int,int,int ) ;
 void* rf_vals_5225_2527 ;
 void* rf_vals_5226 ;
 void* rf_vals_bg_2528 ;
 char* rt2x00_eeprom_addr (struct rt2x00_dev*,int ) ;
 scalar_t__ rt2x00_rf (struct rt2x00_dev*,int ) ;

__attribute__((used)) static int rt73usb_probe_hw_mode(struct rt2x00_dev *rt2x00dev)
{
 struct hw_mode_spec *spec = &rt2x00dev->spec;
 struct channel_info *info;
 char *tx_power;
 unsigned int i;
 ieee80211_hw_set(rt2x00dev->hw, PS_NULLFUNC_STACK);
 ieee80211_hw_set(rt2x00dev->hw, SIGNAL_DBM);
 ieee80211_hw_set(rt2x00dev->hw, SUPPORTS_PS);

 SET_IEEE80211_DEV(rt2x00dev->hw, rt2x00dev->dev);
 SET_IEEE80211_PERM_ADDR(rt2x00dev->hw,
    rt2x00_eeprom_addr(rt2x00dev,
         EEPROM_MAC_ADDR_0));




 spec->supported_bands = SUPPORT_BAND_2GHZ;
 spec->supported_rates = SUPPORT_RATE_CCK | SUPPORT_RATE_OFDM;

 if (rt2x00_rf(rt2x00dev, RF2528)) {
  spec->num_channels = ARRAY_SIZE(rf_vals_bg_2528);
  spec->channels = rf_vals_bg_2528;
 } else if (rt2x00_rf(rt2x00dev, RF5226)) {
  spec->supported_bands |= SUPPORT_BAND_5GHZ;
  spec->num_channels = ARRAY_SIZE(rf_vals_5226);
  spec->channels = rf_vals_5226;
 } else if (rt2x00_rf(rt2x00dev, RF2527)) {
  spec->num_channels = 14;
  spec->channels = rf_vals_5225_2527;
 } else if (rt2x00_rf(rt2x00dev, RF5225)) {
  spec->supported_bands |= SUPPORT_BAND_5GHZ;
  spec->num_channels = ARRAY_SIZE(rf_vals_5225_2527);
  spec->channels = rf_vals_5225_2527;
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
