
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ sch_wdtba; } ;


 int IORESOURCE_IO ;
 TYPE_1__ ie6xx_wdt_data ;
 int ie6xx_wdt_debugfs_exit () ;
 int ie6xx_wdt_dev ;
 int ie6xx_wdt_stop (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_region (int ,int ) ;
 int resource_size (struct resource*) ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static int ie6xx_wdt_remove(struct platform_device *pdev)
{
 struct resource *res;

 res = platform_get_resource(pdev, IORESOURCE_IO, 0);
 ie6xx_wdt_stop(((void*)0));
 watchdog_unregister_device(&ie6xx_wdt_dev);
 ie6xx_wdt_debugfs_exit();
 release_region(res->start, resource_size(res));
 ie6xx_wdt_data.sch_wdtba = 0;

 return 0;
}
