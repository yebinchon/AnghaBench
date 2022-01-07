
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct xenvif_queue {scalar_t__ rx_queue_len; scalar_t__ rx_queue_max; TYPE_2__ rx_queue; int id; TYPE_1__* vif; } ;
struct sk_buff {scalar_t__ len; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 struct sk_buff* __skb_dequeue (TYPE_2__*) ;
 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct sk_buff *xenvif_rx_dequeue(struct xenvif_queue *queue)
{
 struct sk_buff *skb;

 spin_lock_irq(&queue->rx_queue.lock);

 skb = __skb_dequeue(&queue->rx_queue);
 if (skb) {
  queue->rx_queue_len -= skb->len;
  if (queue->rx_queue_len < queue->rx_queue_max) {
   struct netdev_queue *txq;

   txq = netdev_get_tx_queue(queue->vif->dev, queue->id);
   netif_tx_wake_queue(txq);
  }
 }

 spin_unlock_irq(&queue->rx_queue.lock);

 return skb;
}
