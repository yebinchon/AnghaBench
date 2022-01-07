
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct rsi_common {int mutex; int roc_timer; TYPE_1__* priv; } ;
struct TYPE_2__ {int hw; } ;


 int INFO_ZONE ;
 struct rsi_common* common ;
 int del_timer (int *) ;
 struct rsi_common* from_timer (int ,struct timer_list*,int ) ;
 int ieee80211_remain_on_channel_expired (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int roc_timer ;
 int rsi_dbg (int ,char*) ;
 int rsi_resume_conn_channel (struct rsi_common*) ;
 scalar_t__ timer_pending (int *) ;

void rsi_roc_timeout(struct timer_list *t)
{
 struct rsi_common *common = from_timer(common, t, roc_timer);

 rsi_dbg(INFO_ZONE, "Remain on channel expired\n");

 mutex_lock(&common->mutex);
 ieee80211_remain_on_channel_expired(common->priv->hw);

 if (timer_pending(&common->roc_timer))
  del_timer(&common->roc_timer);

 rsi_resume_conn_channel(common);
 mutex_unlock(&common->mutex);
}
