
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {int dummy; } ;
struct timer_list {int dummy; } ;


 int credit_timeout ;
 struct xenvif_queue* from_timer (int ,struct timer_list*,int ) ;
 struct xenvif_queue* queue ;
 int tx_add_credit (struct xenvif_queue*) ;
 int xenvif_napi_schedule_or_enable_events (struct xenvif_queue*) ;

void xenvif_tx_credit_callback(struct timer_list *t)
{
 struct xenvif_queue *queue = from_timer(queue, t, credit_timeout);
 tx_add_credit(queue);
 xenvif_napi_schedule_or_enable_events(queue);
}
