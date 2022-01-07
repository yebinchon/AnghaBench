
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int dummy; } ;
struct wl1271 {int mutex; int dev; } ;
struct ieee80211_vif_chanctx_switch {int new_ctx; int vif; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
typedef enum ieee80211_chanctx_switch_mode { ____Placeholder_ieee80211_chanctx_switch_mode } ieee80211_chanctx_switch_mode ;


 int DEBUG_MAC80211 ;
 int __wlcore_switch_vif_chan (struct wl1271*,struct wl12xx_vif*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int wl1271_debug (int ,char*,int,int) ;
 struct wl12xx_vif* wl12xx_vif_to_data (int ) ;

__attribute__((used)) static int
wlcore_op_switch_vif_chanctx(struct ieee80211_hw *hw,
        struct ieee80211_vif_chanctx_switch *vifs,
        int n_vifs,
        enum ieee80211_chanctx_switch_mode mode)
{
 struct wl1271 *wl = hw->priv;
 int i, ret;

 wl1271_debug(DEBUG_MAC80211,
       "mac80211 switch chanctx n_vifs %d mode %d",
       n_vifs, mode);

 mutex_lock(&wl->mutex);

 ret = pm_runtime_get_sync(wl->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(wl->dev);
  goto out;
 }

 for (i = 0; i < n_vifs; i++) {
  struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vifs[i].vif);

  ret = __wlcore_switch_vif_chan(wl, wlvif, vifs[i].new_ctx);
  if (ret)
   goto out_sleep;
 }
out_sleep:
 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);
out:
 mutex_unlock(&wl->mutex);

 return 0;
}
