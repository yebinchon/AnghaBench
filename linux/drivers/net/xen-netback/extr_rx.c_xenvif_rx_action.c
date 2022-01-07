
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct sk_buff_head* completed; } ;
struct xenvif_queue {TYPE_1__ rx_copy; } ;
struct sk_buff_head {int dummy; } ;


 unsigned int RX_BATCH_SIZE ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int xenvif_rx_copy_flush (struct xenvif_queue*) ;
 scalar_t__ xenvif_rx_ring_slots_available (struct xenvif_queue*) ;
 int xenvif_rx_skb (struct xenvif_queue*) ;

void xenvif_rx_action(struct xenvif_queue *queue)
{
 struct sk_buff_head completed_skbs;
 unsigned int work_done = 0;

 __skb_queue_head_init(&completed_skbs);
 queue->rx_copy.completed = &completed_skbs;

 while (xenvif_rx_ring_slots_available(queue) &&
        work_done < RX_BATCH_SIZE) {
  xenvif_rx_skb(queue);
  work_done++;
 }


 xenvif_rx_copy_flush(queue);
}
