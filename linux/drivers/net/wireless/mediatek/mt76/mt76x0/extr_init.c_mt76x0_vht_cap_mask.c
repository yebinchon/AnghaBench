
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {void* tx_mcs_map; void* rx_mcs_map; } ;
struct ieee80211_sta_vht_cap {TYPE_1__ vht_mcs; int cap; } ;
struct ieee80211_supported_band {struct ieee80211_sta_vht_cap vht_cap; } ;


 int IEEE80211_VHT_CAP_RXLDPC ;
 int IEEE80211_VHT_MCS_NOT_SUPPORTED ;
 int IEEE80211_VHT_MCS_SUPPORT_0_7 ;
 void* cpu_to_le16 (int) ;

__attribute__((used)) static void mt76x0_vht_cap_mask(struct ieee80211_supported_band *sband)
{
 struct ieee80211_sta_vht_cap *vht_cap = &sband->vht_cap;
 u16 mcs_map = 0;
 int i;

 vht_cap->cap &= ~IEEE80211_VHT_CAP_RXLDPC;
 for (i = 0; i < 8; i++) {
  if (!i)
   mcs_map |= (IEEE80211_VHT_MCS_SUPPORT_0_7 << (i * 2));
  else
   mcs_map |=
    (IEEE80211_VHT_MCS_NOT_SUPPORTED << (i * 2));
 }
 vht_cap->vht_mcs.rx_mcs_map = cpu_to_le16(mcs_map);
 vht_cap->vht_mcs.tx_mcs_map = cpu_to_le16(mcs_map);
}
