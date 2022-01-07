
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int len; } ;
union cvmx_ciu_wdogx {int u64; TYPE_1__ s; } ;
typedef scalar_t__ u64 ;
struct irq_domain {int dummy; } ;
typedef int cpumask_t ;
struct TYPE_4__ {scalar_t__ target_ptr; } ;


 int CVMX_CIU_PP_POKEX (unsigned int) ;
 int CVMX_CIU_WDOGX (unsigned int) ;
 int IRQF_NO_THREAD ;
 int IRQ_TYPE_EDGE_RISING ;
 int OCTEON_FEATURE_CIU3 ;
 unsigned int OCTEON_IRQ_WDOG0 ;
 int WD_BLOCK_NUMBER ;
 int countdown_reset ;
 unsigned int cpu2core (unsigned int) ;
 int cpu_to_node (unsigned int) ;
 int cpumask_clear (int *) ;
 int cpumask_set_cpu (unsigned int,int *) ;
 int cvmx_write_csr_node (int,int ,int) ;
 unsigned int irq_create_mapping (struct irq_domain*,int) ;
 int irq_enabled_cpus ;
 int irq_get_irq_data (unsigned int) ;
 int irq_set_affinity (unsigned int,int *) ;
 int irqd_set_trigger_type (int ,int ) ;
 scalar_t__ octeon_has_feature (int ) ;
 struct irq_domain* octeon_irq_get_block_domain (int,int) ;
 TYPE_2__* octeon_wdt_bootvector ;
 scalar_t__ octeon_wdt_nmi_stage2 ;
 int octeon_wdt_poke_irq ;
 int panic (char*,unsigned int) ;
 int * per_cpu_countdown ;
 scalar_t__ request_irq (unsigned int,int ,int ,char*,int ) ;
 int timeout_cnt ;

__attribute__((used)) static int octeon_wdt_cpu_online(unsigned int cpu)
{
 unsigned int core;
 unsigned int irq;
 union cvmx_ciu_wdogx ciu_wdog;
 int node;
 struct irq_domain *domain;
 int hwirq;

 core = cpu2core(cpu);
 node = cpu_to_node(cpu);

 octeon_wdt_bootvector[core].target_ptr = (u64)octeon_wdt_nmi_stage2;


 ciu_wdog.u64 = 0;
 cvmx_write_csr_node(node, CVMX_CIU_WDOGX(core), ciu_wdog.u64);

 per_cpu_countdown[cpu] = countdown_reset;

 if (octeon_has_feature(OCTEON_FEATURE_CIU3)) {

  domain = octeon_irq_get_block_domain(node, WD_BLOCK_NUMBER);


  hwirq = WD_BLOCK_NUMBER << 12 | 0x200 | core;
  irq = irq_create_mapping(domain, hwirq);
  irqd_set_trigger_type(irq_get_irq_data(irq),
          IRQ_TYPE_EDGE_RISING);
 } else
  irq = OCTEON_IRQ_WDOG0 + core;

 if (request_irq(irq, octeon_wdt_poke_irq,
   IRQF_NO_THREAD, "octeon_wdt", octeon_wdt_poke_irq))
  panic("octeon_wdt: Couldn't obtain irq %d", irq);


 if (octeon_has_feature(OCTEON_FEATURE_CIU3)) {
  cpumask_t mask;

  cpumask_clear(&mask);
  cpumask_set_cpu(cpu, &mask);
  irq_set_affinity(irq, &mask);
 }

 cpumask_set_cpu(cpu, &irq_enabled_cpus);


 cvmx_write_csr_node(node, CVMX_CIU_PP_POKEX(core), 1);


 ciu_wdog.u64 = 0;
 ciu_wdog.s.len = timeout_cnt;
 ciu_wdog.s.mode = 3;
 cvmx_write_csr_node(node, CVMX_CIU_WDOGX(core), ciu_wdog.u64);

 return 0;
}
