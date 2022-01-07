
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int * ht_cap; } ;
struct ieee80211_sta_ht_cap {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int memcpy (int *,struct ieee80211_sta_ht_cap*,int) ;

__attribute__((used)) static inline void
wlcore_set_ht_cap(struct wl1271 *wl, enum nl80211_band band,
    struct ieee80211_sta_ht_cap *ht_cap)
{
 memcpy(&wl->ht_cap[band], ht_cap, sizeof(*ht_cap));
}
