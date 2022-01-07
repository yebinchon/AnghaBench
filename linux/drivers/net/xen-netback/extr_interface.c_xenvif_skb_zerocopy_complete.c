
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {int dealloc_wq; int inflight_packets; } ;


 int atomic_dec (int *) ;
 int wake_up (int *) ;

void xenvif_skb_zerocopy_complete(struct xenvif_queue *queue)
{
 atomic_dec(&queue->inflight_packets);





 wake_up(&queue->dealloc_wq);
}
