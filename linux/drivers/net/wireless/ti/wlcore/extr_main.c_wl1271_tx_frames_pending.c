
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {scalar_t__ state; scalar_t__ tx_frames_cnt; int mutex; } ;
struct ieee80211_hw {struct wl1271* priv; } ;


 scalar_t__ WLCORE_STATE_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ wl1271_tx_total_queue_count (struct wl1271*) ;

__attribute__((used)) static bool wl1271_tx_frames_pending(struct ieee80211_hw *hw)
{
 struct wl1271 *wl = hw->priv;
 bool ret = 0;

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON))
  goto out;


 ret = (wl1271_tx_total_queue_count(wl) > 0) || (wl->tx_frames_cnt > 0);
out:
 mutex_unlock(&wl->mutex);

 return ret;
}
