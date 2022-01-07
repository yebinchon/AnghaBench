
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp805_wdt {int wdd; } ;
struct amba_device {int dummy; } ;


 struct sp805_wdt* amba_get_drvdata (struct amba_device*) ;
 int watchdog_set_drvdata (int *,int *) ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static int sp805_wdt_remove(struct amba_device *adev)
{
 struct sp805_wdt *wdt = amba_get_drvdata(adev);

 watchdog_unregister_device(&wdt->wdd);
 watchdog_set_drvdata(&wdt->wdd, ((void*)0));

 return 0;
}
