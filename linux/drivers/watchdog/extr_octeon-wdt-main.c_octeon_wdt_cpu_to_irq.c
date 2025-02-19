
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;


 int OCTEON_FEATURE_CIU3 ;
 unsigned int OCTEON_IRQ_WDOG0 ;
 int WD_BLOCK_NUMBER ;
 unsigned int cpu2core (int) ;
 int cpu_to_node (int) ;
 int irq_find_mapping (struct irq_domain*,int) ;
 scalar_t__ octeon_has_feature (int ) ;
 struct irq_domain* octeon_irq_get_block_domain (int,int) ;

__attribute__((used)) static int octeon_wdt_cpu_to_irq(int cpu)
{
 unsigned int coreid;
 int node;
 int irq;

 coreid = cpu2core(cpu);
 node = cpu_to_node(cpu);

 if (octeon_has_feature(OCTEON_FEATURE_CIU3)) {
  struct irq_domain *domain;
  int hwirq;

  domain = octeon_irq_get_block_domain(node,
           WD_BLOCK_NUMBER);
  hwirq = WD_BLOCK_NUMBER << 12 | 0x200 | coreid;
  irq = irq_find_mapping(domain, hwirq);
 } else {
  irq = OCTEON_IRQ_WDOG0 + coreid;
 }
 return irq;
}
