
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct qaob** aobs; scalar_t__ use_cq; } ;
struct TYPE_3__ {TYPE_2__ out; } ;
struct qdio_q {scalar_t__ slib; TYPE_1__ u; } ;
struct qdio_irq {unsigned long chsc_page; scalar_t__ qdr; struct qdio_q** output_qs; struct qdio_q** input_qs; } ;
struct qaob {int dummy; } ;


 int QDIO_MAX_BUFFERS_PER_Q ;
 int QDIO_MAX_QUEUES_PER_IRQ ;
 int free_page (unsigned long) ;
 int kmem_cache_free (int ,struct qdio_q*) ;
 int qdio_disable_async_operation (TYPE_2__*) ;
 int qdio_q_cache ;
 int qdio_release_aob (struct qaob*) ;

void qdio_release_memory(struct qdio_irq *irq_ptr)
{
 struct qdio_q *q;
 int i;





 for (i = 0; i < QDIO_MAX_QUEUES_PER_IRQ; i++) {
  q = irq_ptr->input_qs[i];
  if (q) {
   free_page((unsigned long) q->slib);
   kmem_cache_free(qdio_q_cache, q);
  }
 }
 for (i = 0; i < QDIO_MAX_QUEUES_PER_IRQ; i++) {
  q = irq_ptr->output_qs[i];
  if (q) {
   if (q->u.out.use_cq) {
    int n;

    for (n = 0; n < QDIO_MAX_BUFFERS_PER_Q; ++n) {
     struct qaob *aob = q->u.out.aobs[n];
     if (aob) {
      qdio_release_aob(aob);
      q->u.out.aobs[n] = ((void*)0);
     }
    }

    qdio_disable_async_operation(&q->u.out);
   }
   free_page((unsigned long) q->slib);
   kmem_cache_free(qdio_q_cache, q);
  }
 }
 free_page((unsigned long) irq_ptr->qdr);
 free_page(irq_ptr->chsc_page);
 free_page((unsigned long) irq_ptr);
}
