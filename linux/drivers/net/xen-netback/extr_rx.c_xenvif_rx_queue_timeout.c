
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenvif_queue {int rx_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {long expires; } ;


 long MAX_SCHEDULE_TIMEOUT ;
 TYPE_1__* XENVIF_RX_CB (struct sk_buff*) ;
 long jiffies ;
 struct sk_buff* skb_peek (int *) ;

__attribute__((used)) static long xenvif_rx_queue_timeout(struct xenvif_queue *queue)
{
 struct sk_buff *skb;
 long timeout;

 skb = skb_peek(&queue->rx_queue);
 if (!skb)
  return MAX_SCHEDULE_TIMEOUT;

 timeout = XENVIF_RX_CB(skb)->expires - jiffies;
 return timeout < 0 ? 0 : timeout;
}
