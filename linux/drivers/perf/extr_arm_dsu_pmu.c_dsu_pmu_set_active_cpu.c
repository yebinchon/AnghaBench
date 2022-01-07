
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsu_pmu {int active_cpu; int irq; } ;


 int cpumask_set_cpu (int,int *) ;
 scalar_t__ irq_set_affinity_hint (int ,int *) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static void dsu_pmu_set_active_cpu(int cpu, struct dsu_pmu *dsu_pmu)
{
 cpumask_set_cpu(cpu, &dsu_pmu->active_cpu);
 if (irq_set_affinity_hint(dsu_pmu->irq, &dsu_pmu->active_cpu))
  pr_warn("Failed to set irq affinity to %d\n", cpu);
}
