
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qeth_qdio_q {int next_buf_to_init; struct qdio_buffer** qdio_bufs; } ;
struct TYPE_6__ {struct qeth_qdio_q* c_q; } ;
struct qeth_card {TYPE_3__ qdio; TYPE_2__* gdev; int dev; } ;
struct qdio_buffer {TYPE_1__* element; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {scalar_t__ addr; } ;


 int CARD_DDEV (struct qeth_card*) ;
 int QDIO_FLAG_SYNC_INPUT ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int QDIO_MAX_ELEMENTS_PER_BUFFER ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,unsigned int) ;
 int dev_warn (int *,char*,int) ;
 int do_QDIO (int ,int ,unsigned int,int,int) ;
 int netif_tx_stop_all_queues (int ) ;
 int qeth_is_cq (struct qeth_card*,unsigned int) ;
 int qeth_qdio_handle_aob (struct qeth_card*,unsigned long) ;
 int qeth_schedule_recovery (struct qeth_card*) ;
 int qeth_scrub_qdio_buffer (struct qdio_buffer*,int) ;

__attribute__((used)) static void qeth_qdio_cq_handler(struct qeth_card *card, unsigned int qdio_err,
     unsigned int queue, int first_element,
     int count)
{
 struct qeth_qdio_q *cq = card->qdio.c_q;
 int i;
 int rc;

 if (!qeth_is_cq(card, queue))
  return;

 QETH_CARD_TEXT_(card, 5, "qcqhe%d", first_element);
 QETH_CARD_TEXT_(card, 5, "qcqhc%d", count);
 QETH_CARD_TEXT_(card, 5, "qcqherr%d", qdio_err);

 if (qdio_err) {
  netif_tx_stop_all_queues(card->dev);
  qeth_schedule_recovery(card);
  return;
 }

 for (i = first_element; i < first_element + count; ++i) {
  int bidx = i % QDIO_MAX_BUFFERS_PER_Q;
  struct qdio_buffer *buffer = cq->qdio_bufs[bidx];
  int e = 0;

  while ((e < QDIO_MAX_ELEMENTS_PER_BUFFER) &&
         buffer->element[e].addr) {
   unsigned long phys_aob_addr;

   phys_aob_addr = (unsigned long) buffer->element[e].addr;
   qeth_qdio_handle_aob(card, phys_aob_addr);
   ++e;
  }
  qeth_scrub_qdio_buffer(buffer, QDIO_MAX_ELEMENTS_PER_BUFFER);
 }
 rc = do_QDIO(CARD_DDEV(card), QDIO_FLAG_SYNC_INPUT, queue,
      card->qdio.c_q->next_buf_to_init,
      count);
 if (rc) {
  dev_warn(&card->gdev->dev,
   "QDIO reported an error, rc=%i\n", rc);
  QETH_CARD_TEXT(card, 2, "qcqherr");
 }
 card->qdio.c_q->next_buf_to_init = (card->qdio.c_q->next_buf_to_init
       + count) % QDIO_MAX_BUFFERS_PER_Q;
}
