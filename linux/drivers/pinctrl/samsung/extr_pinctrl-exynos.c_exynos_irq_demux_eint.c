
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;


 int fls (unsigned long) ;
 int generic_handle_irq (int ) ;
 int irq_find_mapping (struct irq_domain*,unsigned int) ;

__attribute__((used)) static inline void exynos_irq_demux_eint(unsigned long pend,
      struct irq_domain *domain)
{
 unsigned int irq;

 while (pend) {
  irq = fls(pend) - 1;
  generic_handle_irq(irq_find_mapping(domain, irq));
  pend &= ~(1 << irq);
 }
}
