
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_udc {int clk; int phy; int dev; } ;
struct platform_device {int dummy; } ;


 int ci_hdrc_remove_device (int ) ;
 int clk_disable_unprepare (int ) ;
 struct tegra_udc* platform_get_drvdata (struct platform_device*) ;
 int usb_phy_set_suspend (int ,int) ;

__attribute__((used)) static int tegra_udc_remove(struct platform_device *pdev)
{
 struct tegra_udc *udc = platform_get_drvdata(pdev);

 ci_hdrc_remove_device(udc->dev);
 usb_phy_set_suspend(udc->phy, 1);
 clk_disable_unprepare(udc->clk);

 return 0;
}
