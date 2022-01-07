
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenvif_queue {int rx_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int expires; } ;


 TYPE_1__* XENVIF_RX_CB (struct sk_buff*) ;
 int jiffies ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_peek (int *) ;
 scalar_t__ time_before (int ,int ) ;
 int xenvif_rx_dequeue (struct xenvif_queue*) ;

__attribute__((used)) static void xenvif_rx_queue_drop_expired(struct xenvif_queue *queue)
{
 struct sk_buff *skb;

 for (;;) {
  skb = skb_peek(&queue->rx_queue);
  if (!skb)
   break;
  if (time_before(jiffies, XENVIF_RX_CB(skb)->expires))
   break;
  xenvif_rx_dequeue(queue);
  kfree_skb(skb);
 }
}
