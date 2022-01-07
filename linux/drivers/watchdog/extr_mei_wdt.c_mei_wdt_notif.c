
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_wdt {scalar_t__ state; } ;
struct mei_cl_device {int dummy; } ;


 scalar_t__ MEI_WDT_NOT_REQUIRED ;
 struct mei_wdt* mei_cldev_get_drvdata (struct mei_cl_device*) ;
 int mei_wdt_register (struct mei_wdt*) ;

__attribute__((used)) static void mei_wdt_notif(struct mei_cl_device *cldev)
{
 struct mei_wdt *wdt = mei_cldev_get_drvdata(cldev);

 if (wdt->state != MEI_WDT_NOT_REQUIRED)
  return;

 mei_wdt_register(wdt);
}
