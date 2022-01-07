
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cvmx_ciu_wdogx {int u64; } ;


 int CVMX_CIU_PP_POKEX (unsigned int) ;
 int CVMX_CIU_WDOGX (unsigned int) ;
 unsigned int cpu2core (unsigned int) ;
 int cpu_to_node (unsigned int) ;
 int cvmx_write_csr_node (int,int ,int) ;
 int free_irq (int ,int ) ;
 int octeon_wdt_cpu_to_irq (unsigned int) ;
 int octeon_wdt_poke_irq ;

__attribute__((used)) static int octeon_wdt_cpu_pre_down(unsigned int cpu)
{
 unsigned int core;
 int node;
 union cvmx_ciu_wdogx ciu_wdog;

 core = cpu2core(cpu);

 node = cpu_to_node(cpu);


 cvmx_write_csr_node(node, CVMX_CIU_PP_POKEX(core), 1);


 ciu_wdog.u64 = 0;
 cvmx_write_csr_node(node, CVMX_CIU_WDOGX(core), ciu_wdog.u64);

 free_irq(octeon_wdt_cpu_to_irq(cpu), octeon_wdt_poke_irq);
 return 0;
}
