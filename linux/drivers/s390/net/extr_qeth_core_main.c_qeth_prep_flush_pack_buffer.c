
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_qdio_out_q {size_t next_buf_to_fill; struct qeth_qdio_out_buffer** bufs; } ;
struct qeth_qdio_out_buffer {scalar_t__ next_element_to_fill; int state; } ;


 int QDIO_MAX_BUFFERS_PER_Q ;
 scalar_t__ QETH_QDIO_BUF_EMPTY ;
 int QETH_QDIO_BUF_PRIMED ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;

__attribute__((used)) static int qeth_prep_flush_pack_buffer(struct qeth_qdio_out_q *queue)
{
 struct qeth_qdio_out_buffer *buffer;

 buffer = queue->bufs[queue->next_buf_to_fill];
 if ((atomic_read(&buffer->state) == QETH_QDIO_BUF_EMPTY) &&
     (buffer->next_element_to_fill > 0)) {

  atomic_set(&buffer->state, QETH_QDIO_BUF_PRIMED);
  queue->next_buf_to_fill =
   (queue->next_buf_to_fill + 1) % QDIO_MAX_BUFFERS_PER_Q;
  return 1;
 }
 return 0;
}
