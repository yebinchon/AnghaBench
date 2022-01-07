
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qman_portal {int irq_sources; int p; } ;


 int QM_PIRQ_VISIBLE ;
 int QM_REG_IER ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int qm_out (int *,int ,int) ;

void qman_p_irqsource_add(struct qman_portal *p, u32 bits)
{
 unsigned long irqflags;

 local_irq_save(irqflags);
 p->irq_sources |= bits & QM_PIRQ_VISIBLE;
 qm_out(&p->p, QM_REG_IER, p->irq_sources);
 local_irq_restore(irqflags);
}
