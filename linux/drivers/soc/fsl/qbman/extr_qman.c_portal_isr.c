
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qman_portal {int irq_sources; int p; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int QMAN_POLL_LIMIT ;
 int QM_DQAVAIL_MASK ;
 int QM_PIRQ_DQRI ;
 int QM_PIRQ_SLOW ;
 int QM_REG_ISR ;
 int __poll_portal_fast (struct qman_portal*,int ) ;
 int __poll_portal_slow (struct qman_portal*,int) ;
 int qm_in (int *,int ) ;
 int qm_out (int *,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t portal_isr(int irq, void *ptr)
{
 struct qman_portal *p = ptr;
 u32 is = qm_in(&p->p, QM_REG_ISR) & p->irq_sources;
 u32 clear = 0;

 if (unlikely(!is))
  return IRQ_NONE;


 if (is & QM_PIRQ_DQRI) {
  __poll_portal_fast(p, QMAN_POLL_LIMIT);
  clear = QM_DQAVAIL_MASK | QM_PIRQ_DQRI;
 }

 clear |= __poll_portal_slow(p, is) & QM_PIRQ_SLOW;
 qm_out(&p->p, QM_REG_ISR, clear);
 return IRQ_HANDLED;
}
