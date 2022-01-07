
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {int rtllib; TYPE_1__* ops; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* tx_enable ) (struct net_device*) ;} ;


 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int rtllib_reset_queue (int ) ;
 int stub1 (struct net_device*) ;

void rtl92e_tx_enable(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 priv->ops->tx_enable(dev);

 rtllib_reset_queue(priv->rtllib);
}
