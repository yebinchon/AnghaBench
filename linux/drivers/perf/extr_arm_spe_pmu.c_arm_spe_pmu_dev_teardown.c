
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_spe_pmu {int handle; int irq; int hotplug_node; } ;


 int arm_spe_pmu_online ;
 int cpuhp_state_remove_instance (int ,int *) ;
 int free_percpu_irq (int ,int ) ;

__attribute__((used)) static void arm_spe_pmu_dev_teardown(struct arm_spe_pmu *spe_pmu)
{
 cpuhp_state_remove_instance(arm_spe_pmu_online, &spe_pmu->hotplug_node);
 free_percpu_irq(spe_pmu->irq, spe_pmu->handle);
}
