
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsi_hw {struct rsi_common* priv; } ;
struct rsi_common {scalar_t__ ant_in_use; int mutex; } ;
struct ieee80211_hw {struct rsi_hw* priv; } ;


 scalar_t__ ANTENNA_SEL_UFL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int rsi_mac80211_get_antenna(struct ieee80211_hw *hw,
        u32 *tx_ant, u32 *rx_ant)
{
 struct rsi_hw *adapter = hw->priv;
 struct rsi_common *common = adapter->priv;

 mutex_lock(&common->mutex);

 *tx_ant = (common->ant_in_use == ANTENNA_SEL_UFL) ? 1 : 0;
 *rx_ant = 0;

 mutex_unlock(&common->mutex);

 return 0;
}
