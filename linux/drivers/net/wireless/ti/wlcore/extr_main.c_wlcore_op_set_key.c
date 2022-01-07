
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {scalar_t__ state; int mutex; int dev; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {scalar_t__ cipher; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;


 int EAGAIN ;
 scalar_t__ WL1271_CIPHER_SUITE_GEM ;
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ;
 int WLCORE_QUEUE_STOP_REASON_SPARE_BLK ;
 scalar_t__ WLCORE_STATE_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 scalar_t__ unlikely (int) ;
 int wl1271_tx_flush (struct wl1271*) ;
 int wlcore_hw_set_key (struct wl1271*,int,struct ieee80211_vif*,struct ieee80211_sta*,struct ieee80211_key_conf*) ;
 int wlcore_stop_queues (struct wl1271*,int ) ;
 int wlcore_wake_queues (struct wl1271*,int ) ;

__attribute__((used)) static int wlcore_op_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
        struct ieee80211_vif *vif,
        struct ieee80211_sta *sta,
        struct ieee80211_key_conf *key_conf)
{
 struct wl1271 *wl = hw->priv;
 int ret;
 bool might_change_spare =
  key_conf->cipher == WL1271_CIPHER_SUITE_GEM ||
  key_conf->cipher == WLAN_CIPHER_SUITE_TKIP;

 if (might_change_spare) {




  wlcore_stop_queues(wl, WLCORE_QUEUE_STOP_REASON_SPARE_BLK);
  wl1271_tx_flush(wl);
 }

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON)) {
  ret = -EAGAIN;
  goto out_wake_queues;
 }

 ret = pm_runtime_get_sync(wl->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(wl->dev);
  goto out_wake_queues;
 }

 ret = wlcore_hw_set_key(wl, cmd, vif, sta, key_conf);

 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);

out_wake_queues:
 if (might_change_spare)
  wlcore_wake_queues(wl, WLCORE_QUEUE_STOP_REASON_SPARE_BLK);

 mutex_unlock(&wl->mutex);

 return ret;
}
