
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rn5t618_wdt {int wdt_dev; } ;
struct platform_device {int dummy; } ;


 struct rn5t618_wdt* platform_get_drvdata (struct platform_device*) ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static int rn5t618_wdt_remove(struct platform_device *pdev)
{
 struct rn5t618_wdt *wdt = platform_get_drvdata(pdev);

 watchdog_unregister_device(&wdt->wdt_dev);

 return 0;
}
