
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fw_stats_update; int fw_stats; } ;
struct wl1271 {scalar_t__ state; int mutex; int dev; TYPE_1__ stats; int plt; } ;


 int WL1271_DEBUGFS_STATS_LIFETIME ;
 scalar_t__ WLCORE_STATE_ON ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int wl1271_acx_statistics (struct wl1271*,int ) ;

void wl1271_debugfs_update_stats(struct wl1271 *wl)
{
 int ret;

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON))
  goto out;

 ret = pm_runtime_get_sync(wl->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(wl->dev);
  goto out;
 }

 if (!wl->plt &&
     time_after(jiffies, wl->stats.fw_stats_update +
         msecs_to_jiffies(WL1271_DEBUGFS_STATS_LIFETIME))) {
  wl1271_acx_statistics(wl, wl->stats.fw_stats);
  wl->stats.fw_stats_update = jiffies;
 }

 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);

out:
 mutex_unlock(&wl->mutex);
}
