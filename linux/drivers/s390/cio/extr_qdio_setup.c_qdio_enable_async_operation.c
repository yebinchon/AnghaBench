
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_output_q {int use_cq; int aobs; } ;
struct qaob {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int kcalloc (int ,int,int ) ;

int qdio_enable_async_operation(struct qdio_output_q *outq)
{
 outq->aobs = kcalloc(QDIO_MAX_BUFFERS_PER_Q, sizeof(struct qaob *),
        GFP_ATOMIC);
 if (!outq->aobs) {
  outq->use_cq = 0;
  return -ENOMEM;
 }
 outq->use_cq = 1;
 return 0;
}
