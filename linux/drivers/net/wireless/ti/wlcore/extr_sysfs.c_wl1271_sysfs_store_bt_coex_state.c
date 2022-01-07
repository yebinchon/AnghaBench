
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {unsigned long sg_enabled; scalar_t__ state; int mutex; int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 scalar_t__ WLCORE_STATE_ON ;
 struct wl1271* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 scalar_t__ unlikely (int) ;
 int wl1271_acx_sg_enable (struct wl1271*,unsigned long) ;
 int wl1271_warning (char*) ;

__attribute__((used)) static ssize_t wl1271_sysfs_store_bt_coex_state(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct wl1271 *wl = dev_get_drvdata(dev);
 unsigned long res;
 int ret;

 ret = kstrtoul(buf, 10, &res);
 if (ret < 0) {
  wl1271_warning("incorrect value written to bt_coex_mode");
  return count;
 }

 mutex_lock(&wl->mutex);

 res = !!res;

 if (res == wl->sg_enabled)
  goto out;

 wl->sg_enabled = res;

 if (unlikely(wl->state != WLCORE_STATE_ON))
  goto out;

 ret = pm_runtime_get_sync(wl->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(wl->dev);
  goto out;
 }

 wl1271_acx_sg_enable(wl, wl->sg_enabled);
 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);

 out:
 mutex_unlock(&wl->mutex);
 return count;
}
