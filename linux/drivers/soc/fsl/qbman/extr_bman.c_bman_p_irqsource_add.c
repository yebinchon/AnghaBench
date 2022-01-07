
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bman_portal {int irq_sources; int p; } ;


 int BM_PIRQ_VISIBLE ;
 int BM_REG_IER ;
 int bm_out (int *,int ,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

int bman_p_irqsource_add(struct bman_portal *p, u32 bits)
{
 unsigned long irqflags;

 local_irq_save(irqflags);
 p->irq_sources |= bits & BM_PIRQ_VISIBLE;
 bm_out(&p->p, BM_REG_IER, p->irq_sources);
 local_irq_restore(irqflags);
 return 0;
}
