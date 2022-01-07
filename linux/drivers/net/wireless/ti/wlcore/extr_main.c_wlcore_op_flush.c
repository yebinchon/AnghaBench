
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1271 {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;


 int wl1271_tx_flush (struct wl1271*) ;

__attribute__((used)) static void wlcore_op_flush(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
       u32 queues, bool drop)
{
 struct wl1271 *wl = hw->priv;

 wl1271_tx_flush(wl);
}
