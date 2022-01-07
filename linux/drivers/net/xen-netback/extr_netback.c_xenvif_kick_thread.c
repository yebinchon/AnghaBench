
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {int wq; } ;


 int wake_up (int *) ;

void xenvif_kick_thread(struct xenvif_queue *queue)
{
 wake_up(&queue->wq);
}
