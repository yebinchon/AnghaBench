
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u16 ;
struct xenvif_rx_cb {scalar_t__ expires; } ;
struct xenvif_queue {int * dealloc_task; int * task; } ;
struct TYPE_4__ {scalar_t__ alg; } ;
struct xenvif {TYPE_3__* dev; TYPE_1__ hash; scalar_t__ drain_timeout; scalar_t__ multicast_control; struct xenvif_queue* queues; int num_queues; } ;
struct sk_buff {scalar_t__ pkt_type; scalar_t__ data; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct ethhdr {int h_dest; } ;
typedef int netdev_tx_t ;
struct TYPE_5__ {int tx_dropped; } ;
struct TYPE_6__ {TYPE_2__ stats; int name; } ;


 int BUG_ON (int) ;
 int NETDEV_TX_OK ;
 scalar_t__ PACKET_MULTICAST ;
 unsigned int READ_ONCE (int ) ;
 struct xenvif_rx_cb* XENVIF_RX_CB (struct sk_buff*) ;
 scalar_t__ XEN_NETIF_CTRL_HASH_ALGORITHM_NONE ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ jiffies ;
 struct xenvif* netdev_priv (struct net_device*) ;
 int pr_warn_ratelimited (char*,unsigned int,int ) ;
 int skb_clear_hash (struct sk_buff*) ;
 unsigned int skb_get_queue_mapping (struct sk_buff*) ;
 int xenvif_kick_thread (struct xenvif_queue*) ;
 int xenvif_mcast_match (struct xenvif*,int ) ;
 int xenvif_rx_queue_tail (struct xenvif_queue*,struct sk_buff*) ;
 int xenvif_schedulable (struct xenvif*) ;

__attribute__((used)) static netdev_tx_t
xenvif_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct xenvif *vif = netdev_priv(dev);
 struct xenvif_queue *queue = ((void*)0);
 unsigned int num_queues;
 u16 index;
 struct xenvif_rx_cb *cb;

 BUG_ON(skb->dev != dev);





 num_queues = READ_ONCE(vif->num_queues);
 if (num_queues < 1)
  goto drop;


 index = skb_get_queue_mapping(skb);
 if (index >= num_queues) {
  pr_warn_ratelimited("Invalid queue %hu for packet on interface %s\n",
        index, vif->dev->name);
  index %= num_queues;
 }
 queue = &vif->queues[index];


 if (queue->task == ((void*)0) ||
     queue->dealloc_task == ((void*)0) ||
     !xenvif_schedulable(vif))
  goto drop;

 if (vif->multicast_control && skb->pkt_type == PACKET_MULTICAST) {
  struct ethhdr *eth = (struct ethhdr *)skb->data;

  if (!xenvif_mcast_match(vif, eth->h_dest))
   goto drop;
 }

 cb = XENVIF_RX_CB(skb);
 cb->expires = jiffies + vif->drain_timeout;





 if (vif->hash.alg == XEN_NETIF_CTRL_HASH_ALGORITHM_NONE)
  skb_clear_hash(skb);

 xenvif_rx_queue_tail(queue, skb);
 xenvif_kick_thread(queue);

 return NETDEV_TX_OK;

 drop:
 vif->dev->stats.tx_dropped++;
 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}
