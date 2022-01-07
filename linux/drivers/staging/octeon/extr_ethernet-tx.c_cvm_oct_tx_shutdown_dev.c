
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct octeon_ethernet {TYPE_1__* tx_free_list; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int lock; } ;


 int __skb_dequeue (TYPE_1__*) ;
 int dev_kfree_skb_any (int ) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 scalar_t__ skb_queue_len (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void cvm_oct_tx_shutdown_dev(struct net_device *dev)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 unsigned long flags;
 int qos;

 for (qos = 0; qos < 16; qos++) {
  spin_lock_irqsave(&priv->tx_free_list[qos].lock, flags);
  while (skb_queue_len(&priv->tx_free_list[qos]))
   dev_kfree_skb_any(__skb_dequeue
       (&priv->tx_free_list[qos]));
  spin_unlock_irqrestore(&priv->tx_free_list[qos].lock, flags);
 }
}
