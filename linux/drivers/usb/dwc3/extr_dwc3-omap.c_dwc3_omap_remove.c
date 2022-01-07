
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dwc3_omap {int dev; int irq; } ;


 int disable_irq (int ) ;
 int dwc3_omap_disable_irqs (struct dwc3_omap*) ;
 int of_platform_depopulate (int ) ;
 struct dwc3_omap* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static int dwc3_omap_remove(struct platform_device *pdev)
{
 struct dwc3_omap *omap = platform_get_drvdata(pdev);

 dwc3_omap_disable_irqs(omap);
 disable_irq(omap->irq);
 of_platform_depopulate(omap->dev);
 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
