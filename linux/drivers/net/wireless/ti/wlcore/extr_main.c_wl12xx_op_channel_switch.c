
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl12xx_vif {int channel_switch_work; int beacon_int; int flags; } ;
struct wl1271 {scalar_t__ state; int mutex; int dev; TYPE_1__* ops; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct ieee80211_channel_switch {unsigned long count; } ;
struct TYPE_2__ {int (* channel_switch ) (struct wl1271*,struct wl12xx_vif*,struct ieee80211_channel_switch*) ;} ;


 int DEBUG_MAC80211 ;
 scalar_t__ WLCORE_STATE_OFF ;
 scalar_t__ WLCORE_STATE_ON ;
 int WLVIF_FLAG_CS_PROGRESS ;
 int WLVIF_FLAG_STA_ASSOCIATED ;
 int ieee80211_chswitch_done (struct ieee80211_vif*,int) ;
 int ieee80211_queue_delayed_work (struct ieee80211_hw*,int *,scalar_t__) ;
 unsigned long ieee80211_tu_to_usec (int ) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int set_bit (int ,int *) ;
 int stub1 (struct wl1271*,struct wl12xx_vif*,struct ieee80211_channel_switch*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ usecs_to_jiffies (unsigned long) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_tx_flush (struct wl1271*) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

__attribute__((used)) static void wl12xx_op_channel_switch(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         struct ieee80211_channel_switch *ch_switch)
{
 struct wl1271 *wl = hw->priv;
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 int ret;

 wl1271_debug(DEBUG_MAC80211, "mac80211 channel switch");

 wl1271_tx_flush(wl);

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state == WLCORE_STATE_OFF)) {
  if (test_bit(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags))
   ieee80211_chswitch_done(vif, 0);
  goto out;
 } else if (unlikely(wl->state != WLCORE_STATE_ON)) {
  goto out;
 }

 ret = pm_runtime_get_sync(wl->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(wl->dev);
  goto out;
 }



 if (test_bit(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags)) {
  unsigned long delay_usec;

  ret = wl->ops->channel_switch(wl, wlvif, ch_switch);
  if (ret)
   goto out_sleep;

  set_bit(WLVIF_FLAG_CS_PROGRESS, &wlvif->flags);


  delay_usec = ieee80211_tu_to_usec(wlvif->beacon_int) *
   ch_switch->count;
  ieee80211_queue_delayed_work(hw, &wlvif->channel_switch_work,
          usecs_to_jiffies(delay_usec) +
          msecs_to_jiffies(5000));
 }

out_sleep:
 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);

out:
 mutex_unlock(&wl->mutex);
}
