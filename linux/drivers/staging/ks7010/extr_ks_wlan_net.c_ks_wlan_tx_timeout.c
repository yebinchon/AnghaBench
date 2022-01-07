
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int tx_errors; } ;
struct TYPE_3__ {int qtail; int qhead; } ;
struct ks_wlan_private {TYPE_2__ nstats; TYPE_1__ tx_dev; } ;


 int netdev_dbg (struct net_device*,char*,int ,int ) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;
 int netif_queue_stopped (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static
void ks_wlan_tx_timeout(struct net_device *dev)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 netdev_dbg(dev, "head(%d) tail(%d)!!\n", priv->tx_dev.qhead,
     priv->tx_dev.qtail);
 if (!netif_queue_stopped(dev))
  netif_stop_queue(dev);
 priv->nstats.tx_errors++;
 netif_wake_queue(dev);
}
