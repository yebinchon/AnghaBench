
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int pm_runtime_disable (int *) ;
 int sh_wdt_dev ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static int sh_wdt_remove(struct platform_device *pdev)
{
 watchdog_unregister_device(&sh_wdt_dev);

 pm_runtime_disable(&pdev->dev);

 return 0;
}
