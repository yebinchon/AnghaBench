
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int pmu; } ;
struct arm_pmu {int (* filter_match ) (struct perf_event*) ;int supported_cpus; } ;


 int cpumask_test_cpu (unsigned int,int *) ;
 unsigned int smp_processor_id () ;
 int stub1 (struct perf_event*) ;
 struct arm_pmu* to_arm_pmu (int ) ;

__attribute__((used)) static int armpmu_filter_match(struct perf_event *event)
{
 struct arm_pmu *armpmu = to_arm_pmu(event->pmu);
 unsigned int cpu = smp_processor_id();
 int ret;

 ret = cpumask_test_cpu(cpu, &armpmu->supported_cpus);
 if (ret && armpmu->filter_match)
  return armpmu->filter_match(event);

 return ret;
}
