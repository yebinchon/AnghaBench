
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {scalar_t__ state; int mutex; int dev; } ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;


 int DEBUG_CMD ;
 int EINVAL ;
 scalar_t__ WLCORE_STATE_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 scalar_t__ unlikely (int) ;
 struct ieee80211_hw* wiphy_to_ieee80211_hw (struct wiphy*) ;
 int wl1271_debug (int ,char*) ;
 int wlcore_smart_config_stop (struct wl1271*) ;

__attribute__((used)) static int
wlcore_vendor_cmd_smart_config_stop(struct wiphy *wiphy,
        struct wireless_dev *wdev,
        const void *data, int data_len)
{
 struct ieee80211_hw *hw = wiphy_to_ieee80211_hw(wiphy);
 struct wl1271 *wl = hw->priv;
 int ret;

 wl1271_debug(DEBUG_CMD, "testmode cmd smart config stop");

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON)) {
  ret = -EINVAL;
  goto out;
 }

 ret = pm_runtime_get_sync(wl->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(wl->dev);
  goto out;
 }

 ret = wlcore_smart_config_stop(wl);

 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);
out:
 mutex_unlock(&wl->mutex);

 return ret;
}
