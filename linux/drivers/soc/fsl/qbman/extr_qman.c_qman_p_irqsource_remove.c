
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qman_portal {int p; int irq_sources; } ;


 int QM_PIRQ_VISIBLE ;
 int QM_REG_IER ;
 int QM_REG_ISR ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int qm_in (int *,int ) ;
 int qm_out (int *,int ,int ) ;

void qman_p_irqsource_remove(struct qman_portal *p, u32 bits)
{
 unsigned long irqflags;
 u32 ier;
 local_irq_save(irqflags);
 bits &= QM_PIRQ_VISIBLE;
 p->irq_sources &= ~bits;
 qm_out(&p->p, QM_REG_IER, p->irq_sources);
 ier = qm_in(&p->p, QM_REG_IER);




 qm_out(&p->p, QM_REG_ISR, ~ier);
 local_irq_restore(irqflags);
}
