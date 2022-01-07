
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int roc_complete_work; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;


 int DEBUG_MAC80211 ;
 int cancel_delayed_work_sync (int *) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_tx_flush (struct wl1271*) ;
 int wlcore_roc_completed (struct wl1271*) ;

__attribute__((used)) static int wlcore_op_cancel_remain_on_channel(struct ieee80211_hw *hw,
           struct ieee80211_vif *vif)
{
 struct wl1271 *wl = hw->priv;

 wl1271_debug(DEBUG_MAC80211, "mac80211 croc");


 wl1271_tx_flush(wl);





 cancel_delayed_work_sync(&wl->roc_complete_work);
 wlcore_roc_completed(wl);

 return 0;
}
