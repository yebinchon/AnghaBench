
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct am35x_glue {int phy_clk; int clk; int phy; int musb; } ;


 int clk_disable (int ) ;
 int clk_put (int ) ;
 int kfree (struct am35x_glue*) ;
 int platform_device_unregister (int ) ;
 struct am35x_glue* platform_get_drvdata (struct platform_device*) ;
 int usb_phy_generic_unregister (int ) ;

__attribute__((used)) static int am35x_remove(struct platform_device *pdev)
{
 struct am35x_glue *glue = platform_get_drvdata(pdev);

 platform_device_unregister(glue->musb);
 usb_phy_generic_unregister(glue->phy);
 clk_disable(glue->clk);
 clk_disable(glue->phy_clk);
 clk_put(glue->clk);
 clk_put(glue->phy_clk);
 kfree(glue);

 return 0;
}
