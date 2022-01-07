
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni903x_wdt {int wdd; } ;
struct acpi_device {int dummy; } ;


 struct ni903x_wdt* acpi_driver_data (struct acpi_device*) ;
 int ni903x_wdd_stop (int *) ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static int ni903x_acpi_remove(struct acpi_device *device)
{
 struct ni903x_wdt *wdt = acpi_driver_data(device);

 ni903x_wdd_stop(&wdt->wdd);
 watchdog_unregister_device(&wdt->wdd);

 return 0;
}
