
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dm816x_usb_phy {int refclk; int dev; int phy; } ;


 int clk_unprepare (int ) ;
 struct dm816x_usb_phy* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int usb_remove_phy (int *) ;

__attribute__((used)) static int dm816x_usb_phy_remove(struct platform_device *pdev)
{
 struct dm816x_usb_phy *phy = platform_get_drvdata(pdev);

 usb_remove_phy(&phy->phy);
 pm_runtime_disable(phy->dev);
 clk_unprepare(phy->refclk);

 return 0;
}
