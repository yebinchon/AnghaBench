
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int watchdog_unregister_device (int *) ;
 int wm8350_wdt ;

__attribute__((used)) static int wm8350_wdt_remove(struct platform_device *pdev)
{
 watchdog_unregister_device(&wm8350_wdt);
 return 0;
}
