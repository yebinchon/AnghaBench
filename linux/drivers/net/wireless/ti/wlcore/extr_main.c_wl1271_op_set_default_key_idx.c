
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hlid; } ;
struct wl12xx_vif {int default_key; scalar_t__ encryption_type; TYPE_1__ sta; } ;
struct wl1271 {scalar_t__ state; int mutex; int dev; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;


 int DEBUG_MAC80211 ;
 int EAGAIN ;
 scalar_t__ KEY_WEP ;
 scalar_t__ WLCORE_STATE_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 scalar_t__ unlikely (int) ;
 int wl1271_debug (int ,char*,int) ;
 int wl12xx_cmd_set_default_wep_key (struct wl1271*,int,int ) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

__attribute__((used)) static void wl1271_op_set_default_key_idx(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       int key_idx)
{
 struct wl1271 *wl = hw->priv;
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 int ret;

 wl1271_debug(DEBUG_MAC80211, "mac80211 set default key idx %d",
       key_idx);


 if (key_idx == -1)
  return;

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON)) {
  ret = -EAGAIN;
  goto out_unlock;
 }

 ret = pm_runtime_get_sync(wl->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(wl->dev);
  goto out_unlock;
 }

 wlvif->default_key = key_idx;


 if (wlvif->encryption_type == KEY_WEP) {
  ret = wl12xx_cmd_set_default_wep_key(wl,
    key_idx,
    wlvif->sta.hlid);
  if (ret < 0)
   goto out_sleep;
 }

out_sleep:
 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);

out_unlock:
 mutex_unlock(&wl->mutex);
}
