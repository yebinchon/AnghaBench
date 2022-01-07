
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsi_hw {struct rsi_common* priv; } ;
struct rsi_common {int mutex; int rts_threshold; } ;
struct ieee80211_hw {struct rsi_hw* priv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int rsi_mac80211_set_rts_threshold(struct ieee80211_hw *hw,
       u32 value)
{
 struct rsi_hw *adapter = hw->priv;
 struct rsi_common *common = adapter->priv;

 mutex_lock(&common->mutex);
 common->rts_threshold = value;
 mutex_unlock(&common->mutex);

 return 0;
}
