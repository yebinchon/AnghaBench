
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct cw1200_common {int set_tim_work; int workqueue; } ;


 int queue_work (int ,int *) ;

int cw1200_set_tim(struct ieee80211_hw *dev, struct ieee80211_sta *sta,
     bool set)
{
 struct cw1200_common *priv = dev->priv;
 queue_work(priv->workqueue, &priv->set_tim_work);
 return 0;
}
