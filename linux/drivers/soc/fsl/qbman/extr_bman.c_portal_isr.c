
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bm_portal {int dummy; } ;
struct bman_portal {int irq_sources; struct bm_portal p; } ;
typedef int irqreturn_t ;


 int BM_REG_ISR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int bm_in (struct bm_portal*,int ) ;
 int bm_out (struct bm_portal*,int ,int) ;
 int poll_portal_slow (struct bman_portal*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t portal_isr(int irq, void *ptr)
{
 struct bman_portal *p = ptr;
 struct bm_portal *portal = &p->p;
 u32 clear = p->irq_sources;
 u32 is = bm_in(portal, BM_REG_ISR) & p->irq_sources;

 if (unlikely(!is))
  return IRQ_NONE;

 clear |= poll_portal_slow(p, is);
 bm_out(portal, BM_REG_ISR, clear);
 return IRQ_HANDLED;
}
