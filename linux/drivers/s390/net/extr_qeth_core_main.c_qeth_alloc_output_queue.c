
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_qdio_out_q {int qdio_bufs; } ;


 int GFP_KERNEL ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int kfree (struct qeth_qdio_out_q*) ;
 struct qeth_qdio_out_q* kzalloc (int,int ) ;
 scalar_t__ qdio_alloc_buffers (int ,int ) ;

__attribute__((used)) static struct qeth_qdio_out_q *qeth_alloc_output_queue(void)
{
 struct qeth_qdio_out_q *q = kzalloc(sizeof(*q), GFP_KERNEL);

 if (!q)
  return ((void*)0);

 if (qdio_alloc_buffers(q->qdio_bufs, QDIO_MAX_BUFFERS_PER_Q)) {
  kfree(q);
  return ((void*)0);
 }
 return q;
}
