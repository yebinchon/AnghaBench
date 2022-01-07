
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_qdio_out_q {int queue_no; int ** bufs; int timer; struct qeth_card* card; } ;
struct TYPE_2__ {int no_out_queues; int state; int * in_q; struct qeth_qdio_out_q** out_qs; } ;
struct qeth_card {TYPE_1__ qdio; } ;


 int ENOMEM ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int QETH_CARD_HEX (struct qeth_card*,int,struct qeth_qdio_out_q**,int) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 int QETH_QDIO_ALLOCATED ;
 scalar_t__ QETH_QDIO_UNINITIALIZED ;
 int WARN_ON (int *) ;
 scalar_t__ atomic_cmpxchg (int *,scalar_t__,int ) ;
 int atomic_set (int *,scalar_t__) ;
 int kmem_cache_free (int ,int *) ;
 scalar_t__ qeth_alloc_buffer_pool (struct qeth_card*) ;
 scalar_t__ qeth_alloc_cq (struct qeth_card*) ;
 struct qeth_qdio_out_q* qeth_alloc_output_queue () ;
 int * qeth_alloc_qdio_queue () ;
 int qeth_free_buffer_pool (struct qeth_card*) ;
 int qeth_free_output_queue (struct qeth_qdio_out_q*) ;
 int qeth_free_qdio_queue (int *) ;
 scalar_t__ qeth_init_qdio_out_buf (struct qeth_qdio_out_q*,int) ;
 int qeth_qdio_outbuf_cache ;
 int qeth_tx_completion_timer ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int qeth_alloc_qdio_queues(struct qeth_card *card)
{
 int i, j;

 QETH_CARD_TEXT(card, 2, "allcqdbf");

 if (atomic_cmpxchg(&card->qdio.state, QETH_QDIO_UNINITIALIZED,
  QETH_QDIO_ALLOCATED) != QETH_QDIO_UNINITIALIZED)
  return 0;

 QETH_CARD_TEXT(card, 2, "inq");
 card->qdio.in_q = qeth_alloc_qdio_queue();
 if (!card->qdio.in_q)
  goto out_nomem;


 if (qeth_alloc_buffer_pool(card))
  goto out_freeinq;


 for (i = 0; i < card->qdio.no_out_queues; ++i) {
  struct qeth_qdio_out_q *queue;

  queue = qeth_alloc_output_queue();
  if (!queue)
   goto out_freeoutq;
  QETH_CARD_TEXT_(card, 2, "outq %i", i);
  QETH_CARD_HEX(card, 2, &queue, sizeof(void *));
  card->qdio.out_qs[i] = queue;
  queue->card = card;
  queue->queue_no = i;
  timer_setup(&queue->timer, qeth_tx_completion_timer, 0);


  for (j = 0; j < QDIO_MAX_BUFFERS_PER_Q; ++j) {
   WARN_ON(queue->bufs[j]);
   if (qeth_init_qdio_out_buf(queue, j))
    goto out_freeoutqbufs;
  }
 }


 if (qeth_alloc_cq(card))
  goto out_freeoutq;

 return 0;

out_freeoutqbufs:
 while (j > 0) {
  --j;
  kmem_cache_free(qeth_qdio_outbuf_cache,
    card->qdio.out_qs[i]->bufs[j]);
  card->qdio.out_qs[i]->bufs[j] = ((void*)0);
 }
out_freeoutq:
 while (i > 0) {
  qeth_free_output_queue(card->qdio.out_qs[--i]);
  card->qdio.out_qs[i] = ((void*)0);
 }
 qeth_free_buffer_pool(card);
out_freeinq:
 qeth_free_qdio_queue(card->qdio.in_q);
 card->qdio.in_q = ((void*)0);
out_nomem:
 atomic_set(&card->qdio.state, QETH_QDIO_UNINITIALIZED);
 return -ENOMEM;
}
