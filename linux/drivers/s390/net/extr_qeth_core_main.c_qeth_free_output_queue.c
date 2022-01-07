
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_qdio_out_q {int qdio_bufs; } ;


 int QDIO_MAX_BUFFERS_PER_Q ;
 int kfree (struct qeth_qdio_out_q*) ;
 int qdio_free_buffers (int ,int ) ;
 int qeth_drain_output_queue (struct qeth_qdio_out_q*,int) ;

__attribute__((used)) static void qeth_free_output_queue(struct qeth_qdio_out_q *q)
{
 if (!q)
  return;

 qeth_drain_output_queue(q, 1);
 qdio_free_buffers(q->qdio_bufs, QDIO_MAX_BUFFERS_PER_Q);
 kfree(q);
}
