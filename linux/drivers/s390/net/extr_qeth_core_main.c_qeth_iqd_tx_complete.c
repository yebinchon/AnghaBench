
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct qeth_qdio_out_q {int max_elements; TYPE_2__* bufstates; struct qeth_card* card; struct qeth_qdio_out_buffer** bufs; } ;
struct qeth_qdio_out_buffer {TYPE_4__* buffer; int state; } ;
struct TYPE_7__ {scalar_t__ cq; } ;
struct qeth_card {TYPE_3__ options; } ;
struct TYPE_8__ {TYPE_1__* element; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int sflags; } ;


 int QDIO_OUTBUF_STATE_FLAG_PENDING ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,unsigned int) ;
 scalar_t__ QETH_CQ_ENABLED ;
 int QETH_QDIO_BUF_PENDING ;
 scalar_t__ QETH_QDIO_BUF_PRIMED ;
 int TX_NOTIFY_PENDING ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ atomic_cmpxchg (int *,scalar_t__,int ) ;
 int qeth_clear_output_buffer (struct qeth_qdio_out_q*,struct qeth_qdio_out_buffer*,int,int) ;
 int qeth_compute_cq_notification (int ,int ) ;
 scalar_t__ qeth_init_qdio_out_buf (struct qeth_qdio_out_q*,unsigned int) ;
 int qeth_notify_skbs (struct qeth_qdio_out_q*,struct qeth_qdio_out_buffer*,int ) ;
 int qeth_schedule_recovery (struct qeth_card*) ;
 int qeth_scrub_qdio_buffer (TYPE_4__*,int ) ;

__attribute__((used)) static void qeth_iqd_tx_complete(struct qeth_qdio_out_q *queue,
     unsigned int bidx, bool error, int budget)
{
 struct qeth_qdio_out_buffer *buffer = queue->bufs[bidx];
 u8 sflags = buffer->buffer->element[15].sflags;
 struct qeth_card *card = queue->card;

 if (queue->bufstates && (queue->bufstates[bidx].flags &
     QDIO_OUTBUF_STATE_FLAG_PENDING)) {
  WARN_ON_ONCE(card->options.cq != QETH_CQ_ENABLED);

  if (atomic_cmpxchg(&buffer->state, QETH_QDIO_BUF_PRIMED,
         QETH_QDIO_BUF_PENDING) ==
      QETH_QDIO_BUF_PRIMED)
   qeth_notify_skbs(queue, buffer, TX_NOTIFY_PENDING);

  QETH_CARD_TEXT_(card, 5, "pel%u", bidx);


  qeth_scrub_qdio_buffer(buffer->buffer, queue->max_elements);
  if (qeth_init_qdio_out_buf(queue, bidx)) {
   QETH_CARD_TEXT(card, 2, "outofbuf");
   qeth_schedule_recovery(card);
  }

  return;
 }

 if (card->options.cq == QETH_CQ_ENABLED)
  qeth_notify_skbs(queue, buffer,
     qeth_compute_cq_notification(sflags, 0));
 qeth_clear_output_buffer(queue, buffer, error, budget);
}
