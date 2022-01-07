
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_qdio_out_q {int * prev_hdr; scalar_t__ bulk_start; } ;


 scalar_t__ QDIO_BUFNR (scalar_t__) ;
 int qeth_flush_buffers (struct qeth_qdio_out_q*,scalar_t__,int) ;

__attribute__((used)) static void qeth_flush_queue(struct qeth_qdio_out_q *queue)
{
 qeth_flush_buffers(queue, queue->bulk_start, 1);

 queue->bulk_start = QDIO_BUFNR(queue->bulk_start + 1);
 queue->prev_hdr = ((void*)0);
}
