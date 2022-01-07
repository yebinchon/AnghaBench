
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct retu_wdt_dev {int ping_work; } ;
struct platform_device {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 struct watchdog_device* platform_get_drvdata (struct platform_device*) ;
 struct retu_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;
 int watchdog_unregister_device (struct watchdog_device*) ;

__attribute__((used)) static int retu_wdt_remove(struct platform_device *pdev)
{
 struct watchdog_device *wdog = platform_get_drvdata(pdev);
 struct retu_wdt_dev *wdev = watchdog_get_drvdata(wdog);

 watchdog_unregister_device(wdog);
 cancel_delayed_work_sync(&wdev->ping_work);

 return 0;
}
