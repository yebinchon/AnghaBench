
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {int wq; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_INTERRUPTIBLE ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 long schedule_timeout (int ) ;
 int wait ;
 scalar_t__ xenvif_have_rx_work (struct xenvif_queue*) ;
 int xenvif_rx_queue_timeout (struct xenvif_queue*) ;

__attribute__((used)) static void xenvif_wait_for_rx_work(struct xenvif_queue *queue)
{
 DEFINE_WAIT(wait);

 if (xenvif_have_rx_work(queue))
  return;

 for (;;) {
  long ret;

  prepare_to_wait(&queue->wq, &wait, TASK_INTERRUPTIBLE);
  if (xenvif_have_rx_work(queue))
   break;
  ret = schedule_timeout(xenvif_rx_queue_timeout(queue));
  if (!ret)
   break;
 }
 finish_wait(&queue->wq, &wait);
}
