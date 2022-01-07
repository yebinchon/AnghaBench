
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qman_portal {int sdqcr; int p; TYPE_1__* config; } ;
struct TYPE_2__ {int pools; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int qm_dqrr_sdqcr_set (int *,int ) ;

void qman_p_static_dequeue_add(struct qman_portal *p, u32 pools)
{
 unsigned long irqflags;

 local_irq_save(irqflags);
 pools &= p->config->pools;
 p->sdqcr |= pools;
 qm_dqrr_sdqcr_set(&p->p, p->sdqcr);
 local_irq_restore(irqflags);
}
