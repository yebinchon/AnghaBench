
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUHP_AP_PERF_ARM_STARTING ;
 int arm_perf_starting_cpu ;
 int arm_perf_teardown_cpu ;
 int cpuhp_setup_state_multi (int ,char*,int ,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int arm_pmu_hp_init(void)
{
 int ret;

 ret = cpuhp_setup_state_multi(CPUHP_AP_PERF_ARM_STARTING,
          "perf/arm/pmu:starting",
          arm_perf_starting_cpu,
          arm_perf_teardown_cpu);
 if (ret)
  pr_err("CPU hotplug notifier for ARM PMU could not be registered: %d\n",
         ret);
 return ret;
}
