
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct arm_spe_pmu {int irq; int supported_cpus; struct platform_device* pdev; } ;


 int EINVAL ;
 int ENXIO ;
 int dev_err (int *,char*,int) ;
 scalar_t__ irq_get_percpu_devid_partition (int,int *) ;
 int irq_is_percpu (int) ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int arm_spe_pmu_irq_probe(struct arm_spe_pmu *spe_pmu)
{
 struct platform_device *pdev = spe_pmu->pdev;
 int irq = platform_get_irq(pdev, 0);

 if (irq < 0) {
  dev_err(&pdev->dev, "failed to get IRQ (%d)\n", irq);
  return -ENXIO;
 }

 if (!irq_is_percpu(irq)) {
  dev_err(&pdev->dev, "expected PPI but got SPI (%d)\n", irq);
  return -EINVAL;
 }

 if (irq_get_percpu_devid_partition(irq, &spe_pmu->supported_cpus)) {
  dev_err(&pdev->dev, "failed to get PPI partition (%d)\n", irq);
  return -EINVAL;
 }

 spe_pmu->irq = irq;
 return 0;
}
