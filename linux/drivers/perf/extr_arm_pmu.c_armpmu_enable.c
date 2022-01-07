
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_hw_events {int used_mask; } ;
struct pmu {int dummy; } ;
struct arm_pmu {int (* start ) (struct arm_pmu*) ;int supported_cpus; int num_events; int hw_events; } ;


 int bitmap_weight (int ,int ) ;
 int cpumask_test_cpu (int ,int *) ;
 int smp_processor_id () ;
 int stub1 (struct arm_pmu*) ;
 struct pmu_hw_events* this_cpu_ptr (int ) ;
 struct arm_pmu* to_arm_pmu (struct pmu*) ;

__attribute__((used)) static void armpmu_enable(struct pmu *pmu)
{
 struct arm_pmu *armpmu = to_arm_pmu(pmu);
 struct pmu_hw_events *hw_events = this_cpu_ptr(armpmu->hw_events);
 int enabled = bitmap_weight(hw_events->used_mask, armpmu->num_events);


 if (!cpumask_test_cpu(smp_processor_id(), &armpmu->supported_cpus))
  return;

 if (enabled)
  armpmu->start(armpmu);
}
