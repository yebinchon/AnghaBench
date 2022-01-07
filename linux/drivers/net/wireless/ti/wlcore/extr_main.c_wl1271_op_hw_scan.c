
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wl1271 {scalar_t__ state; int mutex; int dev; int roc_map; } ;
struct ieee80211_vif {int dummy; } ;
struct cfg80211_scan_request {TYPE_1__* ssids; scalar_t__ n_ssids; } ;
struct ieee80211_scan_request {struct cfg80211_scan_request req; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct TYPE_2__ {size_t ssid_len; int * ssid; } ;


 int DEBUG_MAC80211 ;
 int EAGAIN ;
 int EBUSY ;
 scalar_t__ WL12XX_MAX_ROLES ;
 scalar_t__ WLCORE_STATE_ON ;
 scalar_t__ find_first_bit (int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 scalar_t__ unlikely (int) ;
 int wl1271_debug (int ,char*) ;
 int wlcore_scan (struct wl1271*,struct ieee80211_vif*,int *,size_t,struct cfg80211_scan_request*) ;

__attribute__((used)) static int wl1271_op_hw_scan(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct ieee80211_scan_request *hw_req)
{
 struct cfg80211_scan_request *req = &hw_req->req;
 struct wl1271 *wl = hw->priv;
 int ret;
 u8 *ssid = ((void*)0);
 size_t len = 0;

 wl1271_debug(DEBUG_MAC80211, "mac80211 hw scan");

 if (req->n_ssids) {
  ssid = req->ssids[0].ssid;
  len = req->ssids[0].ssid_len;
 }

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON)) {





  ret = -EAGAIN;
  goto out;
 }

 ret = pm_runtime_get_sync(wl->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(wl->dev);
  goto out;
 }


 if (find_first_bit(wl->roc_map, WL12XX_MAX_ROLES) < WL12XX_MAX_ROLES) {

  ret = -EBUSY;
  goto out_sleep;
 }

 ret = wlcore_scan(hw->priv, vif, ssid, len, req);
out_sleep:
 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);
out:
 mutex_unlock(&wl->mutex);

 return ret;
}
