
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int modulation; int freq_band; } ;


 int IEEE80211_24GHZ_BAND ;
 int IEEE80211_52GHZ_BAND ;
 int IEEE80211_CCK_MODULATION ;
 int IEEE80211_OFDM_MODULATION ;
 int IEEE_A ;
 int IEEE_B ;
 int IEEE_G ;

__attribute__((used)) static inline int ieee80211_is_valid_mode(struct ieee80211_device *ieee, int mode)
{






 if ((mode & IEEE_A) &&
     (ieee->modulation & IEEE80211_OFDM_MODULATION) &&
     (ieee->freq_band & IEEE80211_52GHZ_BAND))
  return 1;

 if ((mode & IEEE_G) &&
     (ieee->modulation & IEEE80211_OFDM_MODULATION) &&
     (ieee->freq_band & IEEE80211_24GHZ_BAND))
  return 1;

 if ((mode & IEEE_B) &&
     (ieee->modulation & IEEE80211_CCK_MODULATION) &&
     (ieee->freq_band & IEEE80211_24GHZ_BAND))
  return 1;

 return 0;
}
