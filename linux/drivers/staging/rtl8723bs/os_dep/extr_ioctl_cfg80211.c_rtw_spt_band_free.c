
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee80211_supported_band {scalar_t__ band; } ;
struct ieee80211_rate {int dummy; } ;
struct ieee80211_channel {int dummy; } ;


 scalar_t__ NL80211_BAND_2GHZ ;
 int RTW_2G_CHANNELS_NUM ;
 int RTW_G_RATES_NUM ;
 int kfree (int *) ;

__attribute__((used)) static void rtw_spt_band_free(struct ieee80211_supported_band *spt_band)
{
 u32 size = 0;

 if (!spt_band)
  return;

 if (spt_band->band == NL80211_BAND_2GHZ)
 {
  size = sizeof(struct ieee80211_supported_band)
   + sizeof(struct ieee80211_channel)*RTW_2G_CHANNELS_NUM
   + sizeof(struct ieee80211_rate)*RTW_G_RATES_NUM;
 }
 kfree((u8 *)spt_band);
}
