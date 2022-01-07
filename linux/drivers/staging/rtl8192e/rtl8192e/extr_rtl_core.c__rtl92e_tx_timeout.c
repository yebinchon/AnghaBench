
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int reset_wq; } ;
struct net_device {int dummy; } ;


 int netdev_info (struct net_device*,char*) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void _rtl92e_tx_timeout(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 schedule_work(&priv->reset_wq);
 netdev_info(dev, "TXTIMEOUT");
}
