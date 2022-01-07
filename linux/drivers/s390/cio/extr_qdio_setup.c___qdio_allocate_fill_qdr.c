
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * val; } ;
struct qdio_q {TYPE_1__ slsb; scalar_t__ sl; scalar_t__ slib; } ;
struct qdio_irq {TYPE_3__* qdr; } ;
struct TYPE_6__ {TYPE_2__* qdf0; } ;
struct TYPE_5__ {unsigned long sliba; unsigned long sla; unsigned long slsba; int akey; int bkey; int ckey; int dkey; } ;


 int PAGE_DEFAULT_KEY ;

__attribute__((used)) static void __qdio_allocate_fill_qdr(struct qdio_irq *irq_ptr,
         struct qdio_q **irq_ptr_qs,
         int i, int nr)
{
 irq_ptr->qdr->qdf0[i + nr].sliba =
  (unsigned long)irq_ptr_qs[i]->slib;

 irq_ptr->qdr->qdf0[i + nr].sla =
  (unsigned long)irq_ptr_qs[i]->sl;

 irq_ptr->qdr->qdf0[i + nr].slsba =
  (unsigned long)&irq_ptr_qs[i]->slsb.val[0];

 irq_ptr->qdr->qdf0[i + nr].akey = PAGE_DEFAULT_KEY >> 4;
 irq_ptr->qdr->qdf0[i + nr].bkey = PAGE_DEFAULT_KEY >> 4;
 irq_ptr->qdr->qdf0[i + nr].ckey = PAGE_DEFAULT_KEY >> 4;
 irq_ptr->qdr->qdf0[i + nr].dkey = PAGE_DEFAULT_KEY >> 4;
}
