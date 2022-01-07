
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int34x_thermal_zone {struct int34x_thermal_zone* aux_trips; int lpat_table; int zone; } ;


 int acpi_lpat_free_conversion_table (int ) ;
 int kfree (struct int34x_thermal_zone*) ;
 int thermal_zone_device_unregister (int ) ;

void int340x_thermal_zone_remove(struct int34x_thermal_zone
     *int34x_thermal_zone)
{
 thermal_zone_device_unregister(int34x_thermal_zone->zone);
 acpi_lpat_free_conversion_table(int34x_thermal_zone->lpat_table);
 kfree(int34x_thermal_zone->aux_trips);
 kfree(int34x_thermal_zone);
}
