
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;



__attribute__((used)) static void rtl_rate_update(void *ppriv,
       struct ieee80211_supported_band *sband,
       struct cfg80211_chan_def *chandef,
       struct ieee80211_sta *sta, void *priv_sta,
       u32 changed)
{
}
