
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_wdt_dev {int wdog; int dev; } ;


 struct omap_wdt_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static int omap_wdt_remove(struct platform_device *pdev)
{
 struct omap_wdt_dev *wdev = platform_get_drvdata(pdev);

 pm_runtime_disable(wdev->dev);
 watchdog_unregister_device(&wdev->wdog);

 return 0;
}
