
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1271 {scalar_t__ state; int mutex; int dev; } ;
struct ieee80211_hw {struct wl1271* priv; } ;


 int EAGAIN ;
 scalar_t__ WLCORE_STATE_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 scalar_t__ unlikely (int) ;
 int wl1271_acx_frag_threshold (struct wl1271*,int ) ;
 int wl1271_warning (char*,int) ;

__attribute__((used)) static int wl1271_op_set_frag_threshold(struct ieee80211_hw *hw, u32 value)
{
 struct wl1271 *wl = hw->priv;
 int ret = 0;

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

 ret = wl1271_acx_frag_threshold(wl, value);
 if (ret < 0)
  wl1271_warning("wl1271_op_set_frag_threshold failed: %d", ret);

 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);

out:
 mutex_unlock(&wl->mutex);

 return ret;
}
