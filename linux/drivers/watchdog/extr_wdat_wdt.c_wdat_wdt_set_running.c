
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int status; } ;
struct wdat_wdt {TYPE_2__ wdd; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int ACPI_WDAT_GET_RUNNING_STATE ;
 int EOPNOTSUPP ;
 int WDOG_HW_RUNNING ;
 int dev_err (int *,char*) ;
 int set_bit (int ,int *) ;
 int wdat_wdt_run_action (struct wdat_wdt*,int ,int ,scalar_t__*) ;

__attribute__((used)) static void wdat_wdt_set_running(struct wdat_wdt *wdat)
{
 u32 running = 0;
 int ret;

 ret = wdat_wdt_run_action(wdat, ACPI_WDAT_GET_RUNNING_STATE, 0,
      &running);
 if (ret && ret != -EOPNOTSUPP)
  dev_err(&wdat->pdev->dev, "Failed to read running state\n");

 if (running)
  set_bit(WDOG_HW_RUNNING, &wdat->wdd.status);
}
