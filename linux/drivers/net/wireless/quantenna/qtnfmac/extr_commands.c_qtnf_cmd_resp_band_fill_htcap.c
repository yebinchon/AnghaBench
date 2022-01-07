
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_sta_ht_cap {int ht_supported; int ampdu_factor; int ampdu_density; int mcs; int cap; } ;
struct ieee80211_ht_cap {int ampdu_params_info; int mcs; int cap_info; } ;


 int IEEE80211_HT_AMPDU_PARM_DENSITY ;
 int IEEE80211_HT_AMPDU_PARM_DENSITY_SHIFT ;
 int IEEE80211_HT_AMPDU_PARM_FACTOR ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void qtnf_cmd_resp_band_fill_htcap(const u8 *info,
       struct ieee80211_sta_ht_cap *bcap)
{
 const struct ieee80211_ht_cap *ht_cap =
  (const struct ieee80211_ht_cap *)info;

 bcap->ht_supported = 1;
 bcap->cap = le16_to_cpu(ht_cap->cap_info);
 bcap->ampdu_factor =
  ht_cap->ampdu_params_info & IEEE80211_HT_AMPDU_PARM_FACTOR;
 bcap->ampdu_density =
  (ht_cap->ampdu_params_info & IEEE80211_HT_AMPDU_PARM_DENSITY) >>
  IEEE80211_HT_AMPDU_PARM_DENSITY_SHIFT;
 memcpy(&bcap->mcs, &ht_cap->mcs, sizeof(bcap->mcs));
}
