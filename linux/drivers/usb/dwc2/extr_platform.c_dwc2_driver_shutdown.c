
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dwc2_hsotg {int irq; } ;


 int disable_irq (int ) ;
 struct dwc2_hsotg* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void dwc2_driver_shutdown(struct platform_device *dev)
{
 struct dwc2_hsotg *hsotg = platform_get_drvdata(dev);

 disable_irq(hsotg->irq);
}
