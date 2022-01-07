
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct nic7018_wdt {scalar_t__ io_base; int wdd; } ;


 int LOCK ;
 scalar_t__ WDT_REG_LOCK ;
 int outb (int ,scalar_t__) ;
 struct nic7018_wdt* platform_get_drvdata (struct platform_device*) ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static int nic7018_remove(struct platform_device *pdev)
{
 struct nic7018_wdt *wdt = platform_get_drvdata(pdev);

 watchdog_unregister_device(&wdt->wdd);


 outb(LOCK, wdt->io_base + WDT_REG_LOCK);

 return 0;
}
