
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int mutex; int bssid; int * vif; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1251* priv; } ;


 int DEBUG_MAC80211 ;
 int eth_zero_addr (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wl1251_debug (int ,char*) ;

__attribute__((used)) static void wl1251_op_remove_interface(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif)
{
 struct wl1251 *wl = hw->priv;

 mutex_lock(&wl->mutex);
 wl1251_debug(DEBUG_MAC80211, "mac80211 remove interface");
 wl->vif = ((void*)0);
 eth_zero_addr(wl->bssid);
 mutex_unlock(&wl->mutex);
}
