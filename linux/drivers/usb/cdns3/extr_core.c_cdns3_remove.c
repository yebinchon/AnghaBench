
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct cdns3 {int usb3_phy; int usb2_phy; int role_sw; } ;


 int cdns3_exit_roles (struct cdns3*) ;
 int phy_exit (int ) ;
 int phy_power_off (int ) ;
 struct cdns3* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int usb_role_switch_unregister (int ) ;

__attribute__((used)) static int cdns3_remove(struct platform_device *pdev)
{
 struct cdns3 *cdns = platform_get_drvdata(pdev);

 pm_runtime_get_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 pm_runtime_put_noidle(&pdev->dev);
 cdns3_exit_roles(cdns);
 usb_role_switch_unregister(cdns->role_sw);
 phy_power_off(cdns->usb2_phy);
 phy_power_off(cdns->usb3_phy);
 phy_exit(cdns->usb2_phy);
 phy_exit(cdns->usb3_phy);
 return 0;
}
