
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct platform_device {int dummy; } ;


 int orion_wdt_stop (struct watchdog_device*) ;
 struct watchdog_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void orion_wdt_shutdown(struct platform_device *pdev)
{
 struct watchdog_device *wdt_dev = platform_get_drvdata(pdev);
 orion_wdt_stop(wdt_dev);
}
