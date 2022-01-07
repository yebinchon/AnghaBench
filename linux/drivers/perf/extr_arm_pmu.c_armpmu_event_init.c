
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int cpu; int pmu; } ;
struct arm_pmu {int (* map_event ) (struct perf_event*) ;int supported_cpus; } ;


 int ENOENT ;
 int EOPNOTSUPP ;
 int __hw_perf_event_init (struct perf_event*) ;
 int cpumask_test_cpu (int,int *) ;
 scalar_t__ has_branch_stack (struct perf_event*) ;
 int stub1 (struct perf_event*) ;
 struct arm_pmu* to_arm_pmu (int ) ;

__attribute__((used)) static int armpmu_event_init(struct perf_event *event)
{
 struct arm_pmu *armpmu = to_arm_pmu(event->pmu);
 if (event->cpu != -1 &&
  !cpumask_test_cpu(event->cpu, &armpmu->supported_cpus))
  return -ENOENT;


 if (has_branch_stack(event))
  return -EOPNOTSUPP;

 if (armpmu->map_event(event) == -ENOENT)
  return -ENOENT;

 return __hw_perf_event_init(event);
}
