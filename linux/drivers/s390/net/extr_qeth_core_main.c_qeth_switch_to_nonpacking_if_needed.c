
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_qdio_out_q {scalar_t__ do_pack; int card; int used_buffers; } ;


 int QETH_CARD_TEXT (int ,int,char*) ;
 scalar_t__ QETH_LOW_WATERMARK_PACK ;
 int QETH_TXQ_STAT_INC (struct qeth_qdio_out_q*,int ) ;
 scalar_t__ atomic_read (int *) ;
 int packing_mode_switch ;
 int qeth_prep_flush_pack_buffer (struct qeth_qdio_out_q*) ;

__attribute__((used)) static int qeth_switch_to_nonpacking_if_needed(struct qeth_qdio_out_q *queue)
{
 if (queue->do_pack) {
  if (atomic_read(&queue->used_buffers)
      <= QETH_LOW_WATERMARK_PACK) {

   QETH_CARD_TEXT(queue->card, 6, "pack->np");
   QETH_TXQ_STAT_INC(queue, packing_mode_switch);
   queue->do_pack = 0;
   return qeth_prep_flush_pack_buffer(queue);
  }
 }
 return 0;
}
