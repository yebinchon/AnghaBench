
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int channel; int radar_enabled; int channel_type; int band; int flags; int role_id; } ;
struct wl1271 {scalar_t__ state; int mutex; int dev; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; scalar_t__ radar_enabled; } ;
struct TYPE_3__ {scalar_t__ dfs_state; int band; int center_freq; } ;


 int DEBUG_MAC80211 ;
 int EINVAL ;
 scalar_t__ NL80211_DFS_USABLE ;
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
 int wl1271_set_band_rate (struct wl1271*,struct wl12xx_vif*) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;
 int wlcore_hw_set_cac (struct wl1271*,struct wl12xx_vif*,int) ;

__attribute__((used)) static int wlcore_op_assign_vif_chanctx(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif,
     struct ieee80211_chanctx_conf *ctx)
{
 struct wl1271 *wl = hw->priv;
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 int channel = ieee80211_frequency_to_channel(
  ctx->def.chan->center_freq);
 int ret = -EINVAL;

 wl1271_debug(DEBUG_MAC80211,
       "mac80211 assign chanctx (role %d) %d (type %d) (radar %d dfs_state %d)",
       wlvif->role_id, channel,
       cfg80211_get_chandef_type(&ctx->def),
       ctx->radar_enabled, ctx->def.chan->dfs_state);

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

 wlvif->band = ctx->def.chan->band;
 wlvif->channel = channel;
 wlvif->channel_type = cfg80211_get_chandef_type(&ctx->def);


 wl1271_set_band_rate(wl, wlvif);

 if (ctx->radar_enabled &&
     ctx->def.chan->dfs_state == NL80211_DFS_USABLE) {
  wl1271_debug(DEBUG_MAC80211, "Start radar detection");
  wlcore_hw_set_cac(wl, wlvif, 1);
  wlvif->radar_enabled = 1;
 }

 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);
out:
 mutex_unlock(&wl->mutex);

 return 0;
}
