
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int hw; } ;


 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,int*) ;
 int wlcore_started_vifs_iter ;

__attribute__((used)) static int wlcore_count_started_vifs(struct wl1271 *wl)
{
 int count = 0;

 ieee80211_iterate_active_interfaces_atomic(wl->hw,
     IEEE80211_IFACE_ITER_RESUME_ALL,
     wlcore_started_vifs_iter, &count);
 return count;
}
