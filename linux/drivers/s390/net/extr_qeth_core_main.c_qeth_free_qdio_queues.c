
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int no_out_queues; int ** out_qs; TYPE_3__* in_q; int state; } ;
struct qeth_card {TYPE_2__ qdio; int buffer_reclaim_work; } ;
struct TYPE_6__ {TYPE_1__* bufs; } ;
struct TYPE_4__ {scalar_t__ rx_skb; } ;


 int QDIO_MAX_BUFFERS_PER_Q ;
 scalar_t__ QETH_QDIO_UNINITIALIZED ;
 scalar_t__ atomic_xchg (int *,scalar_t__) ;
 int cancel_delayed_work_sync (int *) ;
 int dev_kfree_skb_any (scalar_t__) ;
 int qeth_free_buffer_pool (struct qeth_card*) ;
 int qeth_free_cq (struct qeth_card*) ;
 int qeth_free_output_queue (int *) ;
 int qeth_free_qdio_queue (TYPE_3__*) ;

__attribute__((used)) static void qeth_free_qdio_queues(struct qeth_card *card)
{
 int i, j;

 if (atomic_xchg(&card->qdio.state, QETH_QDIO_UNINITIALIZED) ==
  QETH_QDIO_UNINITIALIZED)
  return;

 qeth_free_cq(card);
 cancel_delayed_work_sync(&card->buffer_reclaim_work);
 for (j = 0; j < QDIO_MAX_BUFFERS_PER_Q; ++j) {
  if (card->qdio.in_q->bufs[j].rx_skb)
   dev_kfree_skb_any(card->qdio.in_q->bufs[j].rx_skb);
 }
 qeth_free_qdio_queue(card->qdio.in_q);
 card->qdio.in_q = ((void*)0);

 qeth_free_buffer_pool(card);

 for (i = 0; i < card->qdio.no_out_queues; i++) {
  qeth_free_output_queue(card->qdio.out_qs[i]);
  card->qdio.out_qs[i] = ((void*)0);
 }
}
