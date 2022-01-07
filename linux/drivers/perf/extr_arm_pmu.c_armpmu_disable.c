
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct arm_pmu {int (* stop ) (struct arm_pmu*) ;int supported_cpus; } ;


 int cpumask_test_cpu (int ,int *) ;
 int smp_processor_id () ;
 int stub1 (struct arm_pmu*) ;
 struct arm_pmu* to_arm_pmu (struct pmu*) ;

__attribute__((used)) static void armpmu_disable(struct pmu *pmu)
{
 struct arm_pmu *armpmu = to_arm_pmu(pmu);


 if (!cpumask_test_cpu(smp_processor_id(), &armpmu->supported_cpus))
  return;

 armpmu->stop(armpmu);
}
