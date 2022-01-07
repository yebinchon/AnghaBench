
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int modulation; } ;


 int IEEE80211_CCK_MODULATION ;
 int IEEE80211_CCK_RATE_LEN ;
 int IEEE80211_OFDM_MODULATION ;
 scalar_t__ IEEE80211_OFDM_RATE_LEN ;

__attribute__((used)) static unsigned int ieee80211_MFIE_rate_len(struct ieee80211_device *ieee)
{
 unsigned int rate_len = 0;

 if (ieee->modulation & IEEE80211_CCK_MODULATION)
  rate_len = IEEE80211_CCK_RATE_LEN + 2;

 if (ieee->modulation & IEEE80211_OFDM_MODULATION)
  rate_len += IEEE80211_OFDM_RATE_LEN + 2;

 return rate_len;
}
