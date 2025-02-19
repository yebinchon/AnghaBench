
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qeth_qdio_out_q {TYPE_3__* card; struct qeth_qdio_out_buffer** bufs; } ;
struct qeth_qdio_out_buffer {int state; struct qeth_qdio_out_buffer* next_pending; TYPE_2__* q; } ;
struct TYPE_5__ {scalar_t__ cq; } ;
struct TYPE_7__ {TYPE_1__ options; } ;
struct TYPE_6__ {TYPE_3__* card; } ;


 int QETH_CARD_TEXT (TYPE_3__*,int,char*) ;
 int QETH_CARD_TEXT_ (TYPE_3__*,int,char*,long) ;
 scalar_t__ QETH_CQ_ENABLED ;
 scalar_t__ QETH_QDIO_BUF_HANDLED_DELAYED ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ atomic_read (int *) ;
 int kmem_cache_free (int ,struct qeth_qdio_out_buffer*) ;
 int qeth_init_qdio_out_buf (struct qeth_qdio_out_q*,int) ;
 int qeth_qdio_outbuf_cache ;
 int qeth_tx_complete_buf (struct qeth_qdio_out_buffer*,int,int ) ;

__attribute__((used)) static void qeth_cleanup_handled_pending(struct qeth_qdio_out_q *q, int bidx,
      int forced_cleanup)
{
 if (q->card->options.cq != QETH_CQ_ENABLED)
  return;

 if (q->bufs[bidx]->next_pending != ((void*)0)) {
  struct qeth_qdio_out_buffer *head = q->bufs[bidx];
  struct qeth_qdio_out_buffer *c = q->bufs[bidx]->next_pending;

  while (c) {
   if (forced_cleanup ||
       atomic_read(&c->state) ==
         QETH_QDIO_BUF_HANDLED_DELAYED) {
    struct qeth_qdio_out_buffer *f = c;
    QETH_CARD_TEXT(f->q->card, 5, "fp");
    QETH_CARD_TEXT_(f->q->card, 5, "%lx", (long) f);



    qeth_tx_complete_buf(c, forced_cleanup, 0);

    c = f->next_pending;
    WARN_ON_ONCE(head->next_pending != f);
    head->next_pending = c;
    kmem_cache_free(qeth_qdio_outbuf_cache, f);
   } else {
    head = c;
    c = c->next_pending;
   }

  }
 }
 if (forced_cleanup && (atomic_read(&(q->bufs[bidx]->state)) ==
     QETH_QDIO_BUF_HANDLED_DELAYED)) {

  qeth_init_qdio_out_buf(q, bidx);
  QETH_CARD_TEXT(q->card, 2, "clprecov");
 }
}
