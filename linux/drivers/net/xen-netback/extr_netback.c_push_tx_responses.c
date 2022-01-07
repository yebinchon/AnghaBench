
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {int tx_irq; int tx; } ;


 int RING_PUSH_RESPONSES_AND_CHECK_NOTIFY (int *,int) ;
 int notify_remote_via_irq (int ) ;

__attribute__((used)) static void push_tx_responses(struct xenvif_queue *queue)
{
 int notify;

 RING_PUSH_RESPONSES_AND_CHECK_NOTIFY(&queue->tx, notify);
 if (notify)
  notify_remote_via_irq(queue->tx_irq);
}
