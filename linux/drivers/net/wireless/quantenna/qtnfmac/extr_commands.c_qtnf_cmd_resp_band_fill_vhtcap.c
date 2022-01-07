
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vht_cap {int supp_mcs; int vht_cap_info; } ;
struct ieee80211_sta_vht_cap {int vht_supported; int vht_mcs; int cap; } ;


 int le32_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void qtnf_cmd_resp_band_fill_vhtcap(const u8 *info,
        struct ieee80211_sta_vht_cap *bcap)
{
 const struct ieee80211_vht_cap *vht_cap =
  (const struct ieee80211_vht_cap *)info;

 bcap->vht_supported = 1;
 bcap->cap = le32_to_cpu(vht_cap->vht_cap_info);
 memcpy(&bcap->vht_mcs, &vht_cap->supp_mcs, sizeof(bcap->vht_mcs));
}
