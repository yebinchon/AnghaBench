
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_pmu {int node; } ;


 int CPUHP_AP_PERF_ARM_STARTING ;
 int cpu_pm_pmu_unregister (struct arm_pmu*) ;
 int cpuhp_state_remove_instance_nocalls (int ,int *) ;

__attribute__((used)) static void cpu_pmu_destroy(struct arm_pmu *cpu_pmu)
{
 cpu_pm_pmu_unregister(cpu_pmu);
 cpuhp_state_remove_instance_nocalls(CPUHP_AP_PERF_ARM_STARTING,
         &cpu_pmu->node);
}
