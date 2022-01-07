
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int dummy; } ;
struct wl1271 {scalar_t__ state; int mutex; int dev; } ;
struct station_info {int signal; int filled; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
typedef int s8 ;


 int BIT_ULL (int ) ;
 int DEBUG_MAC80211 ;
 int NL80211_STA_INFO_SIGNAL ;
 scalar_t__ WLCORE_STATE_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 scalar_t__ unlikely (int) ;
 int wl1271_debug (int ,char*) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;
 int wlcore_acx_average_rssi (struct wl1271*,struct wl12xx_vif*,int *) ;

__attribute__((used)) static void wlcore_op_sta_statistics(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         struct ieee80211_sta *sta,
         struct station_info *sinfo)
{
 struct wl1271 *wl = hw->priv;
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 s8 rssi_dbm;
 int ret;

 wl1271_debug(DEBUG_MAC80211, "mac80211 get_rssi");

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON))
  goto out;

 ret = pm_runtime_get_sync(wl->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(wl->dev);
  goto out_sleep;
 }

 ret = wlcore_acx_average_rssi(wl, wlvif, &rssi_dbm);
 if (ret < 0)
  goto out_sleep;

 sinfo->filled |= BIT_ULL(NL80211_STA_INFO_SIGNAL);
 sinfo->signal = rssi_dbm;

out_sleep:
 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);

out:
 mutex_unlock(&wl->mutex);
}
