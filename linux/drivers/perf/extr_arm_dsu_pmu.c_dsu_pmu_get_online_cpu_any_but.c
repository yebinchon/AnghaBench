
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsu_pmu {int associated_cpus; } ;
struct cpumask {int dummy; } ;


 int cpu_online_mask ;
 int cpumask_and (struct cpumask*,int *,int ) ;
 int cpumask_any_but (struct cpumask*,int) ;

__attribute__((used)) static int dsu_pmu_get_online_cpu_any_but(struct dsu_pmu *dsu_pmu, int cpu)
{
 struct cpumask online_supported;

 cpumask_and(&online_supported,
    &dsu_pmu->associated_cpus, cpu_online_mask);
 return cpumask_any_but(&online_supported, cpu);
}
