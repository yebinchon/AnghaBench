
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_qdio_out_q {int next_buf_to_fill; int do_pack; int state; int set_pci_flags_count; int used_buffers; } ;


 scalar_t__ QETH_LOW_WATERMARK_PACK ;
 int QETH_OUT_Q_LOCKED_FLUSH ;
 scalar_t__ QETH_OUT_Q_UNLOCKED ;
 int QETH_TXQ_STAT_ADD (struct qeth_qdio_out_q*,int ,int) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,scalar_t__) ;
 scalar_t__ atomic_xchg (int *,int ) ;
 int barrier () ;
 int bufs_pack ;
 int qeth_flush_buffers (struct qeth_qdio_out_q*,int,int) ;
 scalar_t__ qeth_prep_flush_pack_buffer (struct qeth_qdio_out_q*) ;
 scalar_t__ qeth_switch_to_nonpacking_if_needed (struct qeth_qdio_out_q*) ;

__attribute__((used)) static void qeth_check_outbound_queue(struct qeth_qdio_out_q *queue)
{
 int index;
 int flush_cnt = 0;
 int q_was_packing = 0;





 if ((atomic_read(&queue->used_buffers) <= QETH_LOW_WATERMARK_PACK) ||
     !atomic_read(&queue->set_pci_flags_count)) {
  if (atomic_xchg(&queue->state, QETH_OUT_Q_LOCKED_FLUSH) ==
    QETH_OUT_Q_UNLOCKED) {





   index = queue->next_buf_to_fill;
   q_was_packing = queue->do_pack;

   barrier();
   flush_cnt += qeth_switch_to_nonpacking_if_needed(queue);
   if (!flush_cnt &&
       !atomic_read(&queue->set_pci_flags_count))
    flush_cnt += qeth_prep_flush_pack_buffer(queue);
   if (q_was_packing)
    QETH_TXQ_STAT_ADD(queue, bufs_pack, flush_cnt);
   if (flush_cnt)
    qeth_flush_buffers(queue, index, flush_cnt);
   atomic_set(&queue->state, QETH_OUT_Q_UNLOCKED);
  }
 }
}
