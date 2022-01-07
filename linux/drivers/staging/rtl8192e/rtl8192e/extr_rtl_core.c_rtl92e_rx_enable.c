
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {TYPE_1__* ops; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* rx_enable ) (struct net_device*) ;} ;


 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int stub1 (struct net_device*) ;

void rtl92e_rx_enable(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 priv->ops->rx_enable(dev);
}
