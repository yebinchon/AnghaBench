
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_local {scalar_t__ in_idx; scalar_t__ sk_count; int lock; struct sk_buff** skbs; } ;
struct net_device {scalar_t__ ml_priv; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {int irq_queue; } ;
typedef TYPE_1__ hysdn_card ;


 scalar_t__ MAX_SKB_BUFFERS ;
 int NETDEV_TX_OK ;
 int netif_stop_queue (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int schedule_work (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static netdev_tx_t
net_send_packet(struct sk_buff *skb, struct net_device *dev)
{
 struct net_local *lp = (struct net_local *) dev;

 spin_lock_irq(&lp->lock);

 lp->skbs[lp->in_idx++] = skb;
 if (lp->in_idx >= MAX_SKB_BUFFERS)
  lp->in_idx = 0;
 lp->sk_count++;
 netif_trans_update(dev);





 if (lp->sk_count >= MAX_SKB_BUFFERS)
  netif_stop_queue(dev);





 spin_unlock_irq(&lp->lock);

 if (lp->sk_count <= 3) {
  schedule_work(&((hysdn_card *) dev->ml_priv)->irq_queue);
 }
 return NETDEV_TX_OK;
}
