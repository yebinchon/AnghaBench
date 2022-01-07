
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int bootstatus; } ;
struct wdat_wdt {TYPE_2__* pdev; TYPE_1__ wdd; } ;
struct TYPE_4__ {int dev; } ;


 int ACPI_WDAT_GET_STATUS ;
 int ACPI_WDAT_SET_STATUS ;
 int EOPNOTSUPP ;
 int WDIOF_CARDRESET ;
 int dev_err (int *,char*) ;
 int wdat_wdt_run_action (struct wdat_wdt*,int ,int ,scalar_t__*) ;

__attribute__((used)) static void wdat_wdt_boot_status(struct wdat_wdt *wdat)
{
 u32 boot_status = 0;
 int ret;

 ret = wdat_wdt_run_action(wdat, ACPI_WDAT_GET_STATUS, 0, &boot_status);
 if (ret && ret != -EOPNOTSUPP) {
  dev_err(&wdat->pdev->dev, "Failed to read boot status\n");
  return;
 }

 if (boot_status)
  wdat->wdd.bootstatus = WDIOF_CARDRESET;


 ret = wdat_wdt_run_action(wdat, ACPI_WDAT_SET_STATUS, 0, ((void*)0));
 if (ret && ret != -EOPNOTSUPP)
  dev_err(&wdat->pdev->dev, "Failed to clear boot status\n");
}
