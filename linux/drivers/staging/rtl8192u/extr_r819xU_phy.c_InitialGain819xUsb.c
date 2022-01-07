
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8192_priv {int initialgain_operate_wq; int priv_wq; scalar_t__ up; int InitialGainOperateType; } ;
struct net_device {int dummy; } ;


 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int queue_delayed_work (int ,int *,int ) ;

void InitialGain819xUsb(struct net_device *dev, u8 Operation)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 priv->InitialGainOperateType = Operation;

 if (priv->up)
  queue_delayed_work(priv->priv_wq, &priv->initialgain_operate_wq, 0);
}
