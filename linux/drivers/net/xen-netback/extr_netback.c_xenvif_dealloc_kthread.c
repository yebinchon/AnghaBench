
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {int dealloc_wq; } ;


 int cond_resched () ;
 scalar_t__ tx_dealloc_work_todo (struct xenvif_queue*) ;
 int wait_event_interruptible (int ,int) ;
 scalar_t__ xenvif_dealloc_kthread_should_stop (struct xenvif_queue*) ;
 int xenvif_tx_dealloc_action (struct xenvif_queue*) ;

int xenvif_dealloc_kthread(void *data)
{
 struct xenvif_queue *queue = data;

 for (;;) {
  wait_event_interruptible(queue->dealloc_wq,
      tx_dealloc_work_todo(queue) ||
      xenvif_dealloc_kthread_should_stop(queue));
  if (xenvif_dealloc_kthread_should_stop(queue))
   break;

  xenvif_tx_dealloc_action(queue);
  cond_resched();
 }


 if (tx_dealloc_work_todo(queue))
  xenvif_tx_dealloc_action(queue);

 return 0;
}
