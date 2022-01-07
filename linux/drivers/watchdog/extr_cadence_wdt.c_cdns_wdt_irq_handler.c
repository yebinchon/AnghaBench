
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_info (int *,char*) ;

__attribute__((used)) static irqreturn_t cdns_wdt_irq_handler(int irq, void *dev_id)
{
 struct platform_device *pdev = dev_id;

 dev_info(&pdev->dev,
   "Watchdog timed out. Internal reset not enabled\n");

 return IRQ_HANDLED;
}
