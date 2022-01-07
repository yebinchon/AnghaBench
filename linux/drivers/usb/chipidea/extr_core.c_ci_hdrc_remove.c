
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ci_hdrc {scalar_t__ supports_runtime_pm; scalar_t__ role_switch; } ;


 int ci_hdrc_enter_lpm (struct ci_hdrc*,int) ;
 int ci_role_destroy (struct ci_hdrc*) ;
 int ci_ulpi_exit (struct ci_hdrc*) ;
 int ci_usb_phy_exit (struct ci_hdrc*) ;
 int dbg_remove_files (struct ci_hdrc*) ;
 struct ci_hdrc* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int usb_role_switch_unregister (scalar_t__) ;

__attribute__((used)) static int ci_hdrc_remove(struct platform_device *pdev)
{
 struct ci_hdrc *ci = platform_get_drvdata(pdev);

 if (ci->role_switch)
  usb_role_switch_unregister(ci->role_switch);

 if (ci->supports_runtime_pm) {
  pm_runtime_get_sync(&pdev->dev);
  pm_runtime_disable(&pdev->dev);
  pm_runtime_put_noidle(&pdev->dev);
 }

 dbg_remove_files(ci);
 ci_role_destroy(ci);
 ci_hdrc_enter_lpm(ci, 1);
 ci_usb_phy_exit(ci);
 ci_ulpi_exit(ci);

 return 0;
}
