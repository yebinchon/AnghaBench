
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_backup {int backup; } ;
struct platform_device {int dummy; } ;


 struct wm831x_backup* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int wm831x_backup_remove(struct platform_device *pdev)
{
 struct wm831x_backup *devdata = platform_get_drvdata(pdev);

 power_supply_unregister(devdata->backup);

 return 0;
}
