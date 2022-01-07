
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {scalar_t__ state; int mutex; int dev; } ;


 int DEBUG_MAC80211 ;
 int EBUSY ;
 scalar_t__ WLCORE_STATE_ON ;
 int __wlcore_roc_completed (struct wl1271*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 scalar_t__ unlikely (int) ;
 int wl1271_debug (int ,char*) ;

__attribute__((used)) static int wlcore_roc_completed(struct wl1271 *wl)
{
 int ret;

 wl1271_debug(DEBUG_MAC80211, "roc complete");

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON)) {
  ret = -EBUSY;
  goto out;
 }

 ret = pm_runtime_get_sync(wl->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(wl->dev);
  goto out;
 }

 ret = __wlcore_roc_completed(wl);

 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);
out:
 mutex_unlock(&wl->mutex);

 return ret;
}
