
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qeth_qdio_out_q {int queue_no; struct qeth_card* card; int napi; int set_pci_flags_count; int used_buffers; int do_pack; TYPE_1__* bufstates; struct qeth_qdio_out_buffer** bufs; } ;
struct qeth_qdio_out_buffer {int next_element_to_fill; TYPE_3__* buffer; } ;
struct qeth_card {int dummy; } ;
struct TYPE_6__ {TYPE_2__* element; } ;
struct TYPE_5__ {int sflags; int eflags; } ;
struct TYPE_4__ {struct qeth_qdio_out_buffer* user; } ;


 int CARD_DDEV (struct qeth_card*) ;
 int ENOBUFS ;
 scalar_t__ IS_IQD (struct qeth_card*) ;
 unsigned int QDIO_FLAG_PCI_OUT ;
 unsigned int QDIO_FLAG_SYNC_OUTPUT ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 scalar_t__ QETH_HIGH_WATERMARK_PACK ;
 scalar_t__ QETH_WATERMARK_PACK_FUZZ ;
 int SBAL_EFLAGS_LAST_ENTRY ;
 int SBAL_SFLAGS0_PCI_REQ ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int do_QDIO (int ,unsigned int,int,int,int) ;
 int napi_schedule (int *) ;
 int qeth_schedule_recovery (struct qeth_card*) ;

__attribute__((used)) static void qeth_flush_buffers(struct qeth_qdio_out_q *queue, int index,
          int count)
{
 struct qeth_card *card = queue->card;
 struct qeth_qdio_out_buffer *buf;
 int rc;
 int i;
 unsigned int qdio_flags;

 for (i = index; i < index + count; ++i) {
  int bidx = i % QDIO_MAX_BUFFERS_PER_Q;
  buf = queue->bufs[bidx];
  buf->buffer->element[buf->next_element_to_fill - 1].eflags |=
    SBAL_EFLAGS_LAST_ENTRY;

  if (queue->bufstates)
   queue->bufstates[bidx].user = buf;

  if (IS_IQD(queue->card))
   continue;

  if (!queue->do_pack) {
   if ((atomic_read(&queue->used_buffers) >=
    (QETH_HIGH_WATERMARK_PACK -
     QETH_WATERMARK_PACK_FUZZ)) &&
       !atomic_read(&queue->set_pci_flags_count)) {


    atomic_inc(&queue->set_pci_flags_count);
    buf->buffer->element[0].sflags |= SBAL_SFLAGS0_PCI_REQ;
   }
  } else {
   if (!atomic_read(&queue->set_pci_flags_count)) {
    atomic_inc(&queue->set_pci_flags_count);
    buf->buffer->element[0].sflags |= SBAL_SFLAGS0_PCI_REQ;
   }
  }
 }

 qdio_flags = QDIO_FLAG_SYNC_OUTPUT;
 if (atomic_read(&queue->set_pci_flags_count))
  qdio_flags |= QDIO_FLAG_PCI_OUT;
 rc = do_QDIO(CARD_DDEV(queue->card), qdio_flags,
       queue->queue_no, index, count);


 if (IS_IQD(card))
  napi_schedule(&queue->napi);

 if (rc) {

  if (rc == -ENOBUFS)
   return;
  QETH_CARD_TEXT(queue->card, 2, "flushbuf");
  QETH_CARD_TEXT_(queue->card, 2, " q%d", queue->queue_no);
  QETH_CARD_TEXT_(queue->card, 2, " idx%d", index);
  QETH_CARD_TEXT_(queue->card, 2, " c%d", count);
  QETH_CARD_TEXT_(queue->card, 2, " err%d", rc);



  qeth_schedule_recovery(queue->card);
  return;
 }
}
