
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {struct ieee80211_supported_band** bands; } ;
struct ieee80211_supported_band {unsigned int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int flags; int center_freq; } ;


 int IEEE80211_CHAN_DISABLED ;
 int IEEE80211_CHAN_NO_IBSS ;
 int IEEE80211_CHAN_PASSIVE_SCAN ;
 int IEEE80211_CHAN_RADAR ;
 size_t NL80211_BAND_5GHZ ;
 int _rtl_is_radar_freq (int ) ;

__attribute__((used)) static void _rtl_reg_apply_radar_flags(struct wiphy *wiphy)
{
 struct ieee80211_supported_band *sband;
 struct ieee80211_channel *ch;
 unsigned int i;

 if (!wiphy->bands[NL80211_BAND_5GHZ])
  return;

 sband = wiphy->bands[NL80211_BAND_5GHZ];

 for (i = 0; i < sband->n_channels; i++) {
  ch = &sband->channels[i];
  if (!_rtl_is_radar_freq(ch->center_freq))
   continue;
  if (!(ch->flags & IEEE80211_CHAN_DISABLED))
   ch->flags |= IEEE80211_CHAN_RADAR |
       IEEE80211_CHAN_NO_IBSS |
       IEEE80211_CHAN_PASSIVE_SCAN;
 }
}
