
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_spe_pmu {int irq; } ;


 int __arm_spe_pmu_reset_local () ;
 int disable_percpu_irq (int ) ;

__attribute__((used)) static void __arm_spe_pmu_stop_one(void *info)
{
 struct arm_spe_pmu *spe_pmu = info;

 disable_percpu_irq(spe_pmu->irq);
 __arm_spe_pmu_reset_local();
}
