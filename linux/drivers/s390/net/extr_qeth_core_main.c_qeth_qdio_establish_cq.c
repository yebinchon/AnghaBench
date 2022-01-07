
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int no_in_queues; TYPE_2__* c_q; } ;
struct TYPE_7__ {scalar_t__ cq; } ;
struct qeth_card {TYPE_4__ qdio; TYPE_3__ options; } ;
struct qdio_buffer {int dummy; } ;
struct TYPE_6__ {TYPE_1__* bufs; } ;
struct TYPE_5__ {int buffer; } ;


 int QDIO_MAX_BUFFERS_PER_Q ;
 scalar_t__ QETH_CQ_ENABLED ;
 scalar_t__ virt_to_phys (int ) ;

__attribute__((used)) static void qeth_qdio_establish_cq(struct qeth_card *card,
       struct qdio_buffer **in_sbal_ptrs,
       void (**queue_start_poll)
     (struct ccw_device *, int,
      unsigned long))
{
 int i;

 if (card->options.cq == QETH_CQ_ENABLED) {
  int offset = QDIO_MAX_BUFFERS_PER_Q *
        (card->qdio.no_in_queues - 1);
  for (i = 0; i < QDIO_MAX_BUFFERS_PER_Q; ++i) {
   in_sbal_ptrs[offset + i] = (struct qdio_buffer *)
    virt_to_phys(card->qdio.c_q->bufs[i].buffer);
  }

  queue_start_poll[card->qdio.no_in_queues - 1] = ((void*)0);
 }
}
