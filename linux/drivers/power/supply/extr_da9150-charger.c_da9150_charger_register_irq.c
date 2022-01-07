
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct da9150_charger {int dummy; } ;
typedef int irq_handler_t ;


 int IRQF_ONESHOT ;
 int dev_err (struct device*,char*,int,...) ;
 struct da9150_charger* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq_byname (struct platform_device*,char const*) ;
 int request_threaded_irq (int,int *,int ,int ,char const*,struct da9150_charger*) ;

__attribute__((used)) static int da9150_charger_register_irq(struct platform_device *pdev,
           irq_handler_t handler,
           const char *irq_name)
{
 struct device *dev = &pdev->dev;
 struct da9150_charger *charger = platform_get_drvdata(pdev);
 int irq, ret;

 irq = platform_get_irq_byname(pdev, irq_name);
 if (irq < 0) {
  dev_err(dev, "Failed to get IRQ CHG_STATUS: %d\n", irq);
  return irq;
 }

 ret = request_threaded_irq(irq, ((void*)0), handler, IRQF_ONESHOT, irq_name,
       charger);
 if (ret)
  dev_err(dev, "Failed to request IRQ %d: %d\n", irq, ret);

 return ret;
}
