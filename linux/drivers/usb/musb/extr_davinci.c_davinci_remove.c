
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct davinci_glue {int clk; int musb; } ;


 int clk_disable (int ) ;
 int platform_device_unregister (int ) ;
 struct davinci_glue* platform_get_drvdata (struct platform_device*) ;
 int usb_phy_generic_unregister () ;

__attribute__((used)) static int davinci_remove(struct platform_device *pdev)
{
 struct davinci_glue *glue = platform_get_drvdata(pdev);

 platform_device_unregister(glue->musb);
 usb_phy_generic_unregister();
 clk_disable(glue->clk);

 return 0;
}
