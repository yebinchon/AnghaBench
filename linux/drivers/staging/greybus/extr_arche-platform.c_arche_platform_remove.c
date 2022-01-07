
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct arche_platform_drvdata {int dev; int pm_notifier; } ;


 int arche_platform_poweroff_seq (struct arche_platform_drvdata*) ;
 int arche_remove_child ;
 int dev_attr_state ;
 int dev_warn (int ,char*) ;
 int device_for_each_child (int *,int *,int ) ;
 int device_remove_file (int *,int *) ;
 struct arche_platform_drvdata* platform_get_drvdata (struct platform_device*) ;
 int unregister_pm_notifier (int *) ;
 scalar_t__ usb3613_hub_mode_ctrl (int) ;

__attribute__((used)) static int arche_platform_remove(struct platform_device *pdev)
{
 struct arche_platform_drvdata *arche_pdata = platform_get_drvdata(pdev);

 unregister_pm_notifier(&arche_pdata->pm_notifier);
 device_remove_file(&pdev->dev, &dev_attr_state);
 device_for_each_child(&pdev->dev, ((void*)0), arche_remove_child);
 arche_platform_poweroff_seq(arche_pdata);

 if (usb3613_hub_mode_ctrl(0))
  dev_warn(arche_pdata->dev, "failed to control hub device\n");

 return 0;
}
