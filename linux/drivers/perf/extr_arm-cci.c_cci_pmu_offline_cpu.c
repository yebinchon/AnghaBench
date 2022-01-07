
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int cpu; int pmu; } ;


 int cpu_online_mask ;
 int cpumask_any_but (int ,unsigned int) ;
 TYPE_1__* g_cci_pmu ;
 int nr_cpu_ids ;
 int perf_pmu_migrate_context (int *,unsigned int,int) ;

__attribute__((used)) static int cci_pmu_offline_cpu(unsigned int cpu)
{
 int target;

 if (!g_cci_pmu || cpu != g_cci_pmu->cpu)
  return 0;

 target = cpumask_any_but(cpu_online_mask, cpu);
 if (target >= nr_cpu_ids)
  return 0;

 perf_pmu_migrate_context(&g_cci_pmu->pmu, cpu, target);
 g_cci_pmu->cpu = target;
 return 0;
}
