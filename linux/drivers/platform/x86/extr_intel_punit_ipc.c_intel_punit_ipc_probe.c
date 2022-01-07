
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_5__ {int irq; int cmd_complete; int lock; int * dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_NO_SUSPEND ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*) ;
 TYPE_1__* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,char*,TYPE_1__**) ;
 int init_completion (int *) ;
 int intel_punit_get_bars (struct platform_device*) ;
 int intel_punit_ioc ;
 int mutex_init (int *) ;
 int platform_get_irq_optional (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,TYPE_1__*) ;
 TYPE_1__* punit_ipcdev ;

__attribute__((used)) static int intel_punit_ipc_probe(struct platform_device *pdev)
{
 int irq, ret;

 punit_ipcdev = devm_kzalloc(&pdev->dev,
        sizeof(*punit_ipcdev), GFP_KERNEL);
 if (!punit_ipcdev)
  return -ENOMEM;

 platform_set_drvdata(pdev, punit_ipcdev);

 irq = platform_get_irq_optional(pdev, 0);
 if (irq < 0) {
  dev_warn(&pdev->dev, "Invalid IRQ, using polling mode\n");
 } else {
  ret = devm_request_irq(&pdev->dev, irq, intel_punit_ioc,
           IRQF_NO_SUSPEND, "intel_punit_ipc",
           &punit_ipcdev);
  if (ret) {
   dev_err(&pdev->dev, "Failed to request irq: %d\n", irq);
   return ret;
  }
  punit_ipcdev->irq = irq;
 }

 ret = intel_punit_get_bars(pdev);
 if (ret)
  goto out;

 punit_ipcdev->dev = &pdev->dev;
 mutex_init(&punit_ipcdev->lock);
 init_completion(&punit_ipcdev->cmd_complete);

out:
 return ret;
}
