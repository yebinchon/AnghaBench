
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int state; } ;
struct perf_event {int cpu; struct hw_perf_event hw; int pmu; } ;
struct arm_spe_pmu {int supported_cpus; } ;


 int EINVAL ;
 int ENOENT ;
 int PERF_EF_RELOAD ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int arm_spe_pmu_start (struct perf_event*,int ) ;
 int cpumask_test_cpu (int,int *) ;
 int smp_processor_id () ;
 struct arm_spe_pmu* to_spe_pmu (int ) ;

__attribute__((used)) static int arm_spe_pmu_add(struct perf_event *event, int flags)
{
 int ret = 0;
 struct arm_spe_pmu *spe_pmu = to_spe_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 int cpu = event->cpu == -1 ? smp_processor_id() : event->cpu;

 if (!cpumask_test_cpu(cpu, &spe_pmu->supported_cpus))
  return -ENOENT;

 hwc->state = PERF_HES_UPTODATE | PERF_HES_STOPPED;

 if (flags & PERF_EF_START) {
  arm_spe_pmu_start(event, PERF_EF_RELOAD);
  if (hwc->state & PERF_HES_STOPPED)
   ret = -EINVAL;
 }

 return ret;
}
