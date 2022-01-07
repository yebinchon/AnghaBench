
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int ACPI_WDAT_SET_RUNNING_STATE ;
 int to_wdat_wdt (struct watchdog_device*) ;
 int wdat_wdt_run_action (int ,int ,int ,int *) ;

__attribute__((used)) static int wdat_wdt_start(struct watchdog_device *wdd)
{
 return wdat_wdt_run_action(to_wdat_wdt(wdd),
       ACPI_WDAT_SET_RUNNING_STATE, 0, ((void*)0));
}
