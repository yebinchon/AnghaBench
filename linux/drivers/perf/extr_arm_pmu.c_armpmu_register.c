
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int capabilities; } ;
struct arm_pmu {int num_events; int name; TYPE_1__ pmu; int set_event_filter; } ;


 int PERF_PMU_CAP_NO_EXCLUDE ;
 struct arm_pmu* __oprofile_cpu_pmu ;
 int cpu_pmu_destroy (struct arm_pmu*) ;
 int cpu_pmu_init (struct arm_pmu*) ;
 int perf_pmu_register (TYPE_1__*,int ,int) ;
 int pr_info (char*,int ,int ) ;

int armpmu_register(struct arm_pmu *pmu)
{
 int ret;

 ret = cpu_pmu_init(pmu);
 if (ret)
  return ret;

 if (!pmu->set_event_filter)
  pmu->pmu.capabilities |= PERF_PMU_CAP_NO_EXCLUDE;

 ret = perf_pmu_register(&pmu->pmu, pmu->name, -1);
 if (ret)
  goto out_destroy;

 if (!__oprofile_cpu_pmu)
  __oprofile_cpu_pmu = pmu;

 pr_info("enabled with %s PMU driver, %d counters available\n",
  pmu->name, pmu->num_events);

 return 0;

out_destroy:
 cpu_pmu_destroy(pmu);
 return ret;
}
