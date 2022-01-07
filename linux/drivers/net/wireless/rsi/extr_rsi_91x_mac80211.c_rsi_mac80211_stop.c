
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_hw {struct rsi_common* priv; } ;
struct rsi_common {int iface_down; int mutex; } ;
struct ieee80211_hw {int wiphy; struct rsi_hw* priv; } ;


 int ERR_ZONE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rsi_dbg (int ,char*) ;
 int rsi_send_rx_filter_frame (struct rsi_common*,int) ;
 int wiphy_rfkill_stop_polling (int ) ;

__attribute__((used)) static void rsi_mac80211_stop(struct ieee80211_hw *hw)
{
 struct rsi_hw *adapter = hw->priv;
 struct rsi_common *common = adapter->priv;

 rsi_dbg(ERR_ZONE, "===> Interface DOWN <===\n");
 mutex_lock(&common->mutex);
 common->iface_down = 1;
 wiphy_rfkill_stop_polling(hw->wiphy);


 rsi_send_rx_filter_frame(common, 0xffff);

 mutex_unlock(&common->mutex);
}
