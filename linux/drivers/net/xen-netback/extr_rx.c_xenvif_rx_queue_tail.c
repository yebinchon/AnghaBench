
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct xenvif_queue {scalar_t__ rx_queue_len; scalar_t__ rx_queue_max; TYPE_2__ rx_queue; int id; TYPE_1__* vif; } ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* dev; } ;


 int __skb_queue_tail (TYPE_2__*,struct sk_buff*) ;
 int netdev_get_tx_queue (struct net_device*,int ) ;
 int netif_tx_stop_queue (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void xenvif_rx_queue_tail(struct xenvif_queue *queue, struct sk_buff *skb)
{
 unsigned long flags;

 spin_lock_irqsave(&queue->rx_queue.lock, flags);

 __skb_queue_tail(&queue->rx_queue, skb);

 queue->rx_queue_len += skb->len;
 if (queue->rx_queue_len > queue->rx_queue_max) {
  struct net_device *dev = queue->vif->dev;

  netif_tx_stop_queue(netdev_get_tx_queue(dev, queue->id));
 }

 spin_unlock_irqrestore(&queue->rx_queue.lock, flags);
}
