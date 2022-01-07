
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {TYPE_1__* tx_ring; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int queue; } ;


 int HCCA_QUEUE ;
 int MGNT_QUEUE ;
 int TXCMD_QUEUE ;
 int netdev_info (struct net_device*,char*,int,scalar_t__) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 scalar_t__ skb_queue_len (int *) ;

__attribute__((used)) static short _rtl92e_is_tx_queue_empty(struct net_device *dev)
{
 int i = 0;
 struct r8192_priv *priv = rtllib_priv(dev);

 for (i = 0; i <= MGNT_QUEUE; i++) {
  if ((i == TXCMD_QUEUE) || (i == HCCA_QUEUE))
   continue;
  if (skb_queue_len(&(&priv->tx_ring[i])->queue) > 0) {
   netdev_info(dev, "===>tx queue is not empty:%d, %d\n",
          i, skb_queue_len(&(&priv->tx_ring[i])->queue));
   return 0;
  }
 }
 return 1;
}
