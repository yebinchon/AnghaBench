
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnt_private {int byRFType; TYPE_2__* hw; } ;
struct ieee80211_channel {int max_power; void* flags; } ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct TYPE_3__ {int ** bands; } ;


 int ARRAY_SIZE (struct ieee80211_channel*) ;
 void* IEEE80211_CHAN_NO_HT40 ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 struct ieee80211_channel* vnt_channels_2ghz ;
 struct ieee80211_channel* vnt_channels_5ghz ;
 int vnt_supported_2ghz_band ;
 int vnt_supported_5ghz_band ;

void vnt_init_bands(struct vnt_private *priv)
{
 struct ieee80211_channel *ch;
 int i;

 switch (priv->byRFType) {
 case 134:
 case 129:
 case 132:
 default:
  ch = vnt_channels_5ghz;

  for (i = 0; i < ARRAY_SIZE(vnt_channels_5ghz); i++) {
   ch[i].max_power = 0x3f;
   ch[i].flags = IEEE80211_CHAN_NO_HT40;
  }

  priv->hw->wiphy->bands[NL80211_BAND_5GHZ] =
      &vnt_supported_5ghz_band;

 case 131:
 case 135:
 case 133:
 case 130:
 case 128:
  ch = vnt_channels_2ghz;

  for (i = 0; i < ARRAY_SIZE(vnt_channels_2ghz); i++) {
   ch[i].max_power = 0x3f;
   ch[i].flags = IEEE80211_CHAN_NO_HT40;
  }

  priv->hw->wiphy->bands[NL80211_BAND_2GHZ] =
      &vnt_supported_2ghz_band;
  break;
 }
}
