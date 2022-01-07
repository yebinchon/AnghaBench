
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {scalar_t__ up; TYPE_1__* ops; int rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* stop_adapter ) (struct net_device*,int) ;} ;


 int _rtl92e_up (struct net_device*,int) ;
 int rtl92e_irq_disable (struct net_device*) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int rtllib_softmac_stop_protocol (int ,int ,int) ;
 int stub1 (struct net_device*,int) ;

void rtl92e_commit(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 if (priv->up == 0)
  return;
 rtllib_softmac_stop_protocol(priv->rtllib, 0, 1);
 rtl92e_irq_disable(dev);
 priv->ops->stop_adapter(dev, 1);
 _rtl92e_up(dev, 0);
}
