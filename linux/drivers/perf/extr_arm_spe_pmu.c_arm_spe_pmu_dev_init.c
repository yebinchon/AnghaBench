
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_spe_pmu {int features; int handle; int irq; int hotplug_node; int supported_cpus; } ;
typedef int cpumask_t ;


 int DRVNAME ;
 int ENXIO ;
 int SPE_PMU_FEAT_DEV_PROBED ;
 int __arm_spe_pmu_dev_probe ;
 int arm_spe_pmu_irq_handler ;
 int arm_spe_pmu_online ;
 int cpuhp_state_add_instance (int ,int *) ;
 int free_percpu_irq (int ,int ) ;
 int request_percpu_irq (int ,int ,int ,int ) ;
 int smp_call_function_any (int *,int ,struct arm_spe_pmu*,int) ;

__attribute__((used)) static int arm_spe_pmu_dev_init(struct arm_spe_pmu *spe_pmu)
{
 int ret;
 cpumask_t *mask = &spe_pmu->supported_cpus;


 ret = smp_call_function_any(mask, __arm_spe_pmu_dev_probe, spe_pmu, 1);
 if (ret || !(spe_pmu->features & SPE_PMU_FEAT_DEV_PROBED))
  return -ENXIO;


 ret = request_percpu_irq(spe_pmu->irq, arm_spe_pmu_irq_handler, DRVNAME,
     spe_pmu->handle);
 if (ret)
  return ret;






 ret = cpuhp_state_add_instance(arm_spe_pmu_online,
           &spe_pmu->hotplug_node);
 if (ret)
  free_percpu_irq(spe_pmu->irq, spe_pmu->handle);

 return ret;
}
