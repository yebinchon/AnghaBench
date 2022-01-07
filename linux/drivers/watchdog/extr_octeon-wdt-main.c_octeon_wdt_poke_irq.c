
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int CVMX_CIU_PP_POKEX (unsigned int) ;
 int IRQ_HANDLED ;
 unsigned int cpu2core (int) ;
 int cpu_to_node (int) ;
 int cpumask_clear_cpu (int,int *) ;
 int cvmx_write_csr_node (int,int ,int) ;
 int disable_irq_nosync (int) ;
 scalar_t__ do_countdown ;
 int irq_enabled_cpus ;
 scalar_t__* per_cpu_countdown ;
 int raw_smp_processor_id () ;

__attribute__((used)) static irqreturn_t octeon_wdt_poke_irq(int cpl, void *dev_id)
{
 int cpu = raw_smp_processor_id();
 unsigned int core = cpu2core(cpu);
 int node = cpu_to_node(cpu);

 if (do_countdown) {
  if (per_cpu_countdown[cpu] > 0) {

   cvmx_write_csr_node(node, CVMX_CIU_PP_POKEX(core), 1);
   per_cpu_countdown[cpu]--;
  } else {

   disable_irq_nosync(cpl);
   cpumask_clear_cpu(cpu, &irq_enabled_cpus);
  }
 } else {

  cvmx_write_csr_node(node, CVMX_CIU_PP_POKEX(core), 1);
 }
 return IRQ_HANDLED;
}
