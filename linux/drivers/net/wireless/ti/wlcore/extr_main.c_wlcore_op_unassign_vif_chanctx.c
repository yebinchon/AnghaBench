
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int radar_enabled; int flags; int role_id; } ;
struct wl1271 {scalar_t__ state; int mutex; int dev; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
struct TYPE_3__ {int center_freq; } ;


 int DEBUG_MAC80211 ;
 scalar_t__ WLCORE_STATE_ON ;
 int WLVIF_FLAG_INITIALIZED ;
 int cfg80211_get_chandef_type (TYPE_2__*) ;
 int ieee80211_frequency_to_channel (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int wl1271_debug (int ,char*,...) ;
 int wl1271_tx_flush (struct wl1271*) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;
 int wlcore_hw_set_cac (struct wl1271*,struct wl12xx_vif*,int) ;

__attribute__((used)) static void wlcore_op_unassign_vif_chanctx(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct ieee80211_chanctx_conf *ctx)
{
 struct wl1271 *wl = hw->priv;
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 int ret;

 wl1271_debug(DEBUG_MAC80211,
       "mac80211 unassign chanctx (role %d) %d (type %d)",
       wlvif->role_id,
       ieee80211_frequency_to_channel(ctx->def.chan->center_freq),
       cfg80211_get_chandef_type(&ctx->def));

 wl1271_tx_flush(wl);

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON))
  goto out;

 if (unlikely(!test_bit(WLVIF_FLAG_INITIALIZED, &wlvif->flags)))
  goto out;

 ret = pm_runtime_get_sync(wl->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(wl->dev);
  goto out;
 }

 if (wlvif->radar_enabled) {
  wl1271_debug(DEBUG_MAC80211, "Stop radar detection");
  wlcore_hw_set_cac(wl, wlvif, 0);
  wlvif->radar_enabled = 0;
 }

 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);
out:
 mutex_unlock(&wl->mutex);
}
