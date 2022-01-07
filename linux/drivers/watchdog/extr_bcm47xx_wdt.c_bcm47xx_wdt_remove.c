
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct bcm47xx_wdt {int wdd; } ;


 struct bcm47xx_wdt* dev_get_platdata (int *) ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static int bcm47xx_wdt_remove(struct platform_device *pdev)
{
 struct bcm47xx_wdt *wdt = dev_get_platdata(&pdev->dev);

 watchdog_unregister_device(&wdt->wdd);

 return 0;
}
