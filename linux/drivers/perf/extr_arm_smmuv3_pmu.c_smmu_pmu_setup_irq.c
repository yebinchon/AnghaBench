
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smmu_pmu {int irq; int dev; } ;


 int ENXIO ;
 unsigned long IRQF_NOBALANCING ;
 unsigned long IRQF_NO_THREAD ;
 unsigned long IRQF_SHARED ;
 int devm_request_irq (int ,int,int ,unsigned long,char*,struct smmu_pmu*) ;
 int smmu_pmu_handle_irq ;
 int smmu_pmu_setup_msi (struct smmu_pmu*) ;

__attribute__((used)) static int smmu_pmu_setup_irq(struct smmu_pmu *pmu)
{
 unsigned long flags = IRQF_NOBALANCING | IRQF_SHARED | IRQF_NO_THREAD;
 int irq, ret = -ENXIO;

 smmu_pmu_setup_msi(pmu);

 irq = pmu->irq;
 if (irq)
  ret = devm_request_irq(pmu->dev, irq, smmu_pmu_handle_irq,
           flags, "smmuv3-pmu", pmu);
 return ret;
}
