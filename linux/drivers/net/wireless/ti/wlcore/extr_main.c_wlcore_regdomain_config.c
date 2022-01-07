
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int quirks; scalar_t__ state; int mutex; int dev; } ;


 int WLCORE_QUIRK_REGDOMAIN_CONF ;
 scalar_t__ WLCORE_STATE_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 scalar_t__ unlikely (int) ;
 int wl12xx_queue_recovery_work (struct wl1271*) ;
 int wlcore_cmd_regdomain_config_locked (struct wl1271*) ;

void wlcore_regdomain_config(struct wl1271 *wl)
{
 int ret;

 if (!(wl->quirks & WLCORE_QUIRK_REGDOMAIN_CONF))
  return;

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON))
  goto out;

 ret = pm_runtime_get_sync(wl->dev);
 if (ret < 0)
  goto out;

 ret = wlcore_cmd_regdomain_config_locked(wl);
 if (ret < 0) {
  wl12xx_queue_recovery_work(wl);
  goto out;
 }

 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);
out:
 mutex_unlock(&wl->mutex);
}
