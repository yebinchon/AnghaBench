
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {int napi; int tx; } ;


 int RING_FINAL_CHECK_FOR_REQUESTS (int *,int) ;
 int napi_schedule (int *) ;

void xenvif_napi_schedule_or_enable_events(struct xenvif_queue *queue)
{
 int more_to_do;

 RING_FINAL_CHECK_FOR_REQUESTS(&queue->tx, more_to_do);

 if (more_to_do)
  napi_schedule(&queue->napi);
}
