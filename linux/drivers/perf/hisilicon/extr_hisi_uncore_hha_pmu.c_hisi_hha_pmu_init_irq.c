
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct hisi_pmu {int irq; } ;


 int IRQF_NOBALANCING ;
 int IRQF_NO_THREAD ;
 int dev_err (int *,char*,int,int) ;
 int dev_name (int *) ;
 int devm_request_irq (int *,int,int ,int,int ,struct hisi_pmu*) ;
 int hisi_hha_pmu_isr ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int hisi_hha_pmu_init_irq(struct hisi_pmu *hha_pmu,
     struct platform_device *pdev)
{
 int irq, ret;


 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 ret = devm_request_irq(&pdev->dev, irq, hisi_hha_pmu_isr,
         IRQF_NOBALANCING | IRQF_NO_THREAD,
         dev_name(&pdev->dev), hha_pmu);
 if (ret < 0) {
  dev_err(&pdev->dev,
   "Fail to request IRQ:%d ret:%d\n", irq, ret);
  return ret;
 }

 hha_pmu->irq = irq;

 return 0;
}
