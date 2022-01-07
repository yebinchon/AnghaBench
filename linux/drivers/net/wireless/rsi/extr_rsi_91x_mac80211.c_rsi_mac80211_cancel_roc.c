
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_hw {struct rsi_common* priv; } ;
struct rsi_common {int mutex; int roc_timer; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct rsi_hw* priv; } ;


 int INFO_ZONE ;
 int del_timer (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rsi_dbg (int ,char*) ;
 int rsi_resume_conn_channel (struct rsi_common*) ;
 int timer_pending (int *) ;

__attribute__((used)) static int rsi_mac80211_cancel_roc(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif)
{
 struct rsi_hw *adapter = hw->priv;
 struct rsi_common *common = adapter->priv;

 rsi_dbg(INFO_ZONE, "Cancel remain on channel\n");

 mutex_lock(&common->mutex);
 if (!timer_pending(&common->roc_timer)) {
  mutex_unlock(&common->mutex);
  return 0;
 }

 del_timer(&common->roc_timer);

 rsi_resume_conn_channel(common);
 mutex_unlock(&common->mutex);

 return 0;
}
