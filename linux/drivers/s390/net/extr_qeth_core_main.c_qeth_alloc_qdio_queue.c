
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_qdio_q {int * qdio_bufs; TYPE_1__* bufs; } ;
struct TYPE_2__ {int buffer; } ;


 int GFP_KERNEL ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int QETH_DBF_HEX (int ,int,struct qeth_qdio_q**,int) ;
 int SETUP ;
 int kfree (struct qeth_qdio_q*) ;
 struct qeth_qdio_q* kzalloc (int,int ) ;
 scalar_t__ qdio_alloc_buffers (int *,int) ;

__attribute__((used)) static struct qeth_qdio_q *qeth_alloc_qdio_queue(void)
{
 struct qeth_qdio_q *q = kzalloc(sizeof(*q), GFP_KERNEL);
 int i;

 if (!q)
  return ((void*)0);

 if (qdio_alloc_buffers(q->qdio_bufs, QDIO_MAX_BUFFERS_PER_Q)) {
  kfree(q);
  return ((void*)0);
 }

 for (i = 0; i < QDIO_MAX_BUFFERS_PER_Q; ++i)
  q->bufs[i].buffer = q->qdio_bufs[i];

 QETH_DBF_HEX(SETUP, 2, &q, sizeof(void *));
 return q;
}
