
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {scalar_t__ id; int rx_queue; struct xenvif* vif; } ;
struct xenvif {scalar_t__ stall_timeout; scalar_t__ disabled; } ;


 int cond_resched () ;
 scalar_t__ kthread_should_stop () ;
 int skb_queue_empty (int *) ;
 scalar_t__ unlikely (int) ;
 int xenvif_carrier_off (struct xenvif*) ;
 int xenvif_queue_carrier_off (struct xenvif_queue*) ;
 int xenvif_queue_carrier_on (struct xenvif_queue*) ;
 int xenvif_rx_action (struct xenvif_queue*) ;
 int xenvif_rx_queue_drop_expired (struct xenvif_queue*) ;
 int xenvif_rx_queue_purge (struct xenvif_queue*) ;
 scalar_t__ xenvif_rx_queue_ready (struct xenvif_queue*) ;
 scalar_t__ xenvif_rx_queue_stalled (struct xenvif_queue*) ;
 int xenvif_wait_for_rx_work (struct xenvif_queue*) ;

int xenvif_kthread_guest_rx(void *data)
{
 struct xenvif_queue *queue = data;
 struct xenvif *vif = queue->vif;

 if (!vif->stall_timeout)
  xenvif_queue_carrier_on(queue);

 for (;;) {
  xenvif_wait_for_rx_work(queue);

  if (kthread_should_stop())
   break;
  if (unlikely(vif->disabled && queue->id == 0)) {
   xenvif_carrier_off(vif);
   break;
  }

  if (!skb_queue_empty(&queue->rx_queue))
   xenvif_rx_action(queue);





  if (vif->stall_timeout) {
   if (xenvif_rx_queue_stalled(queue))
    xenvif_queue_carrier_off(queue);
   else if (xenvif_rx_queue_ready(queue))
    xenvif_queue_carrier_on(queue);
  }






  xenvif_rx_queue_drop_expired(queue);

  cond_resched();
 }


 xenvif_rx_queue_purge(queue);

 return 0;
}
