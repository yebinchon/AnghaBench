
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wl12xx_vif {scalar_t__ bss_type; int flags; int list; int dev_role_id; int role_id; struct wl1271* wl; } ;
struct wl1271 {scalar_t__ state; int mutex; int dev; int sta_count; int ap_count; int wlvif_list; int recovery_work; int flags; TYPE_1__* addresses; scalar_t__ plt; } ;
struct vif_counter_data {int dummy; } ;
struct ieee80211_vif {int driver_flags; int addr; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct TYPE_2__ {int addr; } ;


 scalar_t__ BSS_TYPE_AP_BSS ;
 int DEBUG_MAC80211 ;
 int EBUSY ;
 int EINVAL ;
 int ETH_ALEN ;
 int IEEE80211_VIF_BEACON_FILTER ;
 int IEEE80211_VIF_SUPPORTS_CQM_RSSI ;
 int IEEE80211_VIF_SUPPORTS_UAPSD ;
 int WL1271_FLAG_INTENDED_FW_RECOVERY ;
 int WL1271_FLAG_RECOVERY_IN_PROGRESS ;
 scalar_t__ WL1271_ROLE_DEVICE ;
 scalar_t__ WL12XX_INVALID_ROLE_TYPE ;
 scalar_t__ WLCORE_STATE_OFF ;
 int WLVIF_FLAG_INITIALIZED ;
 int ieee80211_vif_type_p2p (struct ieee80211_vif*) ;
 int list_add (int *,int *) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wl1271_debug (int ,char*,int ,int ) ;
 int wl1271_error (char*) ;
 int wl1271_init_vif_specific (struct wl1271*,struct ieee80211_vif*) ;
 int wl1271_recovery_work (int *) ;
 int wl1271_sta_hw_init (struct wl1271*,struct wl12xx_vif*) ;
 int wl12xx_cmd_role_enable (struct wl1271*,int ,scalar_t__,int *) ;
 int wl12xx_force_active_psm (struct wl1271*) ;
 scalar_t__ wl12xx_get_role_type (struct wl1271*,struct wl12xx_vif*) ;
 int wl12xx_get_vif_count (struct ieee80211_hw*,struct ieee80211_vif*,struct vif_counter_data*) ;
 int wl12xx_init_fw (struct wl1271*) ;
 int wl12xx_init_vif_data (struct wl1271*,struct ieee80211_vif*) ;
 scalar_t__ wl12xx_need_fw_change (struct wl1271*,struct vif_counter_data,int) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;
 int wlcore_allocate_hw_queue_base (struct wl1271*,struct wl12xx_vif*) ;
 int wlcore_is_p2p_mgmt (struct wl12xx_vif*) ;

__attribute__((used)) static int wl1271_op_add_interface(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif)
{
 struct wl1271 *wl = hw->priv;
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 struct vif_counter_data vif_count;
 int ret = 0;
 u8 role_type;

 if (wl->plt) {
  wl1271_error("Adding Interface not allowed while in PLT mode");
  return -EBUSY;
 }

 vif->driver_flags |= IEEE80211_VIF_BEACON_FILTER |
        IEEE80211_VIF_SUPPORTS_UAPSD |
        IEEE80211_VIF_SUPPORTS_CQM_RSSI;

 wl1271_debug(DEBUG_MAC80211, "mac80211 add interface type %d mac %pM",
       ieee80211_vif_type_p2p(vif), vif->addr);

 wl12xx_get_vif_count(hw, vif, &vif_count);

 mutex_lock(&wl->mutex);






 if (test_bit(WL1271_FLAG_RECOVERY_IN_PROGRESS, &wl->flags) ||
     test_bit(WLVIF_FLAG_INITIALIZED, &wlvif->flags)) {
  ret = -EBUSY;
  goto out;
 }


 ret = wl12xx_init_vif_data(wl, vif);
 if (ret < 0)
  goto out;

 wlvif->wl = wl;
 role_type = wl12xx_get_role_type(wl, wlvif);
 if (role_type == WL12XX_INVALID_ROLE_TYPE) {
  ret = -EINVAL;
  goto out;
 }

 ret = wlcore_allocate_hw_queue_base(wl, wlvif);
 if (ret < 0)
  goto out;





 if (wl->state == WLCORE_STATE_OFF) {




  memcpy(wl->addresses[0].addr, vif->addr, ETH_ALEN);

  ret = wl12xx_init_fw(wl);
  if (ret < 0)
   goto out;
 }





 ret = pm_runtime_get_sync(wl->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(wl->dev);
  goto out_unlock;
 }

 if (wl12xx_need_fw_change(wl, vif_count, 1)) {
  wl12xx_force_active_psm(wl);
  set_bit(WL1271_FLAG_INTENDED_FW_RECOVERY, &wl->flags);
  mutex_unlock(&wl->mutex);
  wl1271_recovery_work(&wl->recovery_work);
  return 0;
 }

 if (!wlcore_is_p2p_mgmt(wlvif)) {
  ret = wl12xx_cmd_role_enable(wl, vif->addr,
          role_type, &wlvif->role_id);
  if (ret < 0)
   goto out;

  ret = wl1271_init_vif_specific(wl, vif);
  if (ret < 0)
   goto out;

 } else {
  ret = wl12xx_cmd_role_enable(wl, vif->addr, WL1271_ROLE_DEVICE,
          &wlvif->dev_role_id);
  if (ret < 0)
   goto out;


  ret = wl1271_sta_hw_init(wl, wlvif);
  if (ret < 0)
   goto out;
 }

 list_add(&wlvif->list, &wl->wlvif_list);
 set_bit(WLVIF_FLAG_INITIALIZED, &wlvif->flags);

 if (wlvif->bss_type == BSS_TYPE_AP_BSS)
  wl->ap_count++;
 else
  wl->sta_count++;
out:
 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);
out_unlock:
 mutex_unlock(&wl->mutex);

 return ret;
}
