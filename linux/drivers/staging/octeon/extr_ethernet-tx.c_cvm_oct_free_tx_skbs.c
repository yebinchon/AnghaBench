
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {struct sk_buff* next; } ;
struct octeon_ethernet {TYPE_1__* tx_free_list; scalar_t__ fau; int port; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int lock; } ;


 int MAX_OUT_QUEUE_DEPTH ;
 int MAX_SKB_TO_FREE ;
 struct sk_buff* __skb_dequeue (TYPE_1__*) ;
 int cvm_oct_adjust_skb_to_free (int,scalar_t__) ;
 int cvm_oct_kick_tx_poll_watchdog () ;
 int cvmx_fau_fetch_and_add32 (scalar_t__,int ) ;
 int cvmx_pko_get_num_queues (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 scalar_t__ skb_queue_len (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cvm_oct_free_tx_skbs(struct net_device *dev)
{
 int skb_to_free;
 int qos, queues_per_port;
 int total_freed = 0;
 int total_remaining = 0;
 unsigned long flags;
 struct octeon_ethernet *priv = netdev_priv(dev);

 queues_per_port = cvmx_pko_get_num_queues(priv->port);

 for (qos = 0; qos < queues_per_port; qos++) {
  if (skb_queue_len(&priv->tx_free_list[qos]) == 0)
   continue;
  skb_to_free = cvmx_fau_fetch_and_add32(priv->fau + qos * 4,
             MAX_SKB_TO_FREE);
  skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free,
        priv->fau + qos * 4);
  total_freed += skb_to_free;
  if (skb_to_free > 0) {
   struct sk_buff *to_free_list = ((void*)0);

   spin_lock_irqsave(&priv->tx_free_list[qos].lock, flags);
   while (skb_to_free > 0) {
    struct sk_buff *t;

    t = __skb_dequeue(&priv->tx_free_list[qos]);
    t->next = to_free_list;
    to_free_list = t;
    skb_to_free--;
   }
   spin_unlock_irqrestore(&priv->tx_free_list[qos].lock,
            flags);

   while (to_free_list) {
    struct sk_buff *t = to_free_list;

    to_free_list = to_free_list->next;
    dev_kfree_skb_any(t);
   }
  }
  total_remaining += skb_queue_len(&priv->tx_free_list[qos]);
 }
 if (total_remaining < MAX_OUT_QUEUE_DEPTH && netif_queue_stopped(dev))
  netif_wake_queue(dev);
 if (total_remaining)
  cvm_oct_kick_tx_poll_watchdog();
}
