
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl12xx_vif {scalar_t__ bss_type; scalar_t__ power_level; int flags; int connection_loss_work; int role_id; } ;
struct wl1271 {scalar_t__ state; int mutex; int dev; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct ieee80211_bss_conf {scalar_t__ txpower; int enable_beacon; } ;


 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BEACON_ENABLED ;
 int BSS_CHANGED_TXPOWER ;
 scalar_t__ BSS_TYPE_AP_BSS ;
 int DEBUG_MAC80211 ;
 scalar_t__ WLCORE_STATE_ON ;
 int WLVIF_FLAG_INITIALIZED ;
 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int wl1271_acx_tx_power (struct wl1271*,struct wl12xx_vif*,scalar_t__) ;
 int wl1271_bss_info_changed_ap (struct wl1271*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ;
 int wl1271_bss_info_changed_sta (struct wl1271*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ;
 int wl1271_debug (int ,char*,int ,int) ;
 int wl1271_tx_flush (struct wl1271*) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

__attribute__((used)) static void wl1271_op_bss_info_changed(struct ieee80211_hw *hw,
           struct ieee80211_vif *vif,
           struct ieee80211_bss_conf *bss_conf,
           u32 changed)
{
 struct wl1271 *wl = hw->priv;
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 bool is_ap = (wlvif->bss_type == BSS_TYPE_AP_BSS);
 int ret;

 wl1271_debug(DEBUG_MAC80211, "mac80211 bss info role %d changed 0x%x",
       wlvif->role_id, (int)changed);





 if (!is_ap && (changed & BSS_CHANGED_ASSOC))
  cancel_delayed_work_sync(&wlvif->connection_loss_work);

 if (is_ap && (changed & BSS_CHANGED_BEACON_ENABLED) &&
     !bss_conf->enable_beacon)
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

 if ((changed & BSS_CHANGED_TXPOWER) &&
     bss_conf->txpower != wlvif->power_level) {

  ret = wl1271_acx_tx_power(wl, wlvif, bss_conf->txpower);
  if (ret < 0)
   goto out;

  wlvif->power_level = bss_conf->txpower;
 }

 if (is_ap)
  wl1271_bss_info_changed_ap(wl, vif, bss_conf, changed);
 else
  wl1271_bss_info_changed_sta(wl, vif, bss_conf, changed);

 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);

out:
 mutex_unlock(&wl->mutex);
}
