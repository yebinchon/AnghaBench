
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_qdio_out_buffer {int state; scalar_t__* is_header; int q; } ;
struct qeth_card {int dummy; } ;
struct qaob {unsigned long user1; unsigned long aorc; unsigned int sb_count; scalar_t__* sba; } ;
typedef enum iucv_tx_notify { ____Placeholder_iucv_tx_notify } iucv_tx_notify ;


 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,unsigned long) ;
 unsigned int QETH_MAX_BUFFER_ELEMENTS (struct qeth_card*) ;
 int QETH_QDIO_BUF_HANDLED_DELAYED ;
 int QETH_QDIO_BUF_IN_CQ ;
 scalar_t__ QETH_QDIO_BUF_PENDING ;
 scalar_t__ QETH_QDIO_BUF_PRIMED ;
 int TX_NOTIFY_DELAYED_OK ;
 int TX_NOTIFY_OK ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ atomic_cmpxchg (int *,scalar_t__,int ) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int kmem_cache_free (int ,void*) ;
 scalar_t__ phys_to_virt (unsigned long) ;
 int qdio_release_aob (struct qaob*) ;
 int qeth_compute_cq_notification (unsigned long,int) ;
 int qeth_core_header_cache ;
 int qeth_notify_skbs (int ,struct qeth_qdio_out_buffer*,int) ;

__attribute__((used)) static void qeth_qdio_handle_aob(struct qeth_card *card,
     unsigned long phys_aob_addr)
{
 struct qaob *aob;
 struct qeth_qdio_out_buffer *buffer;
 enum iucv_tx_notify notification;
 unsigned int i;

 aob = (struct qaob *) phys_to_virt(phys_aob_addr);
 QETH_CARD_TEXT(card, 5, "haob");
 QETH_CARD_TEXT_(card, 5, "%lx", phys_aob_addr);
 buffer = (struct qeth_qdio_out_buffer *) aob->user1;
 QETH_CARD_TEXT_(card, 5, "%lx", aob->user1);

 if (atomic_cmpxchg(&buffer->state, QETH_QDIO_BUF_PRIMED,
      QETH_QDIO_BUF_IN_CQ) == QETH_QDIO_BUF_PRIMED) {
  notification = TX_NOTIFY_OK;
 } else {
  WARN_ON_ONCE(atomic_read(&buffer->state) !=
       QETH_QDIO_BUF_PENDING);
  atomic_set(&buffer->state, QETH_QDIO_BUF_IN_CQ);
  notification = TX_NOTIFY_DELAYED_OK;
 }

 if (aob->aorc != 0) {
  QETH_CARD_TEXT_(card, 2, "aorc%02X", aob->aorc);
  notification = qeth_compute_cq_notification(aob->aorc, 1);
 }
 qeth_notify_skbs(buffer->q, buffer, notification);




 for (i = 0;
      i < aob->sb_count && i < QETH_MAX_BUFFER_ELEMENTS(card);
      i++) {
  if (aob->sba[i] && buffer->is_header[i])
   kmem_cache_free(qeth_core_header_cache,
     (void *) aob->sba[i]);
 }
 atomic_set(&buffer->state, QETH_QDIO_BUF_HANDLED_DELAYED);

 qdio_release_aob(aob);
}
