
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ runtime_reg; } ;


 scalar_t__ GP60 ;
 scalar_t__ WDT_TIME_OUT ;
 int misc_deregister (int *) ;
 int nowayout ;
 int release_region (scalar_t__,int) ;
 TYPE_1__ sch311x_wdt_data ;
 int sch311x_wdt_miscdev ;
 int sch311x_wdt_stop () ;

__attribute__((used)) static int sch311x_wdt_remove(struct platform_device *pdev)
{

 if (!nowayout)
  sch311x_wdt_stop();


 misc_deregister(&sch311x_wdt_miscdev);
 release_region(sch311x_wdt_data.runtime_reg + WDT_TIME_OUT, 4);
 release_region(sch311x_wdt_data.runtime_reg + GP60, 1);
 sch311x_wdt_data.runtime_reg = 0;
 return 0;
}
