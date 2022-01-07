
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_spe_pmu {int irq; } ;


 int IRQ_TYPE_NONE ;
 int __arm_spe_pmu_reset_local () ;
 int enable_percpu_irq (int ,int ) ;

__attribute__((used)) static void __arm_spe_pmu_setup_one(void *info)
{
 struct arm_spe_pmu *spe_pmu = info;

 __arm_spe_pmu_reset_local();
 enable_percpu_irq(spe_pmu->irq, IRQ_TYPE_NONE);
}
