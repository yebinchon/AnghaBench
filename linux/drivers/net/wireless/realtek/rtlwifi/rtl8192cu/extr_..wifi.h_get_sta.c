
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 struct ieee80211_sta* ieee80211_find_sta (struct ieee80211_vif*,int const*) ;

__attribute__((used)) static inline struct ieee80211_sta *get_sta(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         const u8 *bssid)
{
 return ieee80211_find_sta(vif, bssid);
}
