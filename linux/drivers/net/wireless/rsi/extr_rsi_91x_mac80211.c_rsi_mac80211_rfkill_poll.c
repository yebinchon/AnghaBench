
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_hw {struct rsi_common* priv; } ;
struct rsi_common {scalar_t__ fsm_state; int mutex; } ;
struct ieee80211_hw {int wiphy; struct rsi_hw* priv; } ;


 scalar_t__ FSM_MAC_INIT_DONE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;

__attribute__((used)) static void rsi_mac80211_rfkill_poll(struct ieee80211_hw *hw)
{
 struct rsi_hw *adapter = hw->priv;
 struct rsi_common *common = adapter->priv;

 mutex_lock(&common->mutex);
 if (common->fsm_state != FSM_MAC_INIT_DONE)
  wiphy_rfkill_set_hw_state(hw->wiphy, 1);
 else
  wiphy_rfkill_set_hw_state(hw->wiphy, 0);
 mutex_unlock(&common->mutex);
}
