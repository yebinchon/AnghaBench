
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wdat_wdt {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ACPI_WDAT_SET_REBOOT ;
 int EOPNOTSUPP ;
 int dev_err (int *,char*) ;
 int wdat_wdt_run_action (struct wdat_wdt*,int ,int ,int *) ;

__attribute__((used)) static int wdat_wdt_enable_reboot(struct wdat_wdt *wdat)
{
 int ret;







 ret = wdat_wdt_run_action(wdat, ACPI_WDAT_SET_REBOOT, 0, ((void*)0));
 if (ret && ret != -EOPNOTSUPP) {
  dev_err(&wdat->pdev->dev,
   "Failed to enable reboot when watchdog triggers\n");
  return ret;
 }

 return 0;
}
