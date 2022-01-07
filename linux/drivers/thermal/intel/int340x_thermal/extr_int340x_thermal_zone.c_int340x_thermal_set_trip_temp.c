
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thermal_zone_device {struct int34x_thermal_zone* devdata; } ;
struct int34x_thermal_zone {int* aux_trips; TYPE_1__* adev; TYPE_2__* override_ops; } ;
typedef int name ;
typedef int acpi_status ;
struct TYPE_4__ {int (* set_trip_temp ) (struct thermal_zone_device*,int,int) ;} ;
struct TYPE_3__ {int handle; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EIO ;
 int MILLICELSIUS_TO_DECI_KELVIN (int) ;
 int acpi_execute_simple_method (int ,char*,int ) ;
 int snprintf (char*,int,char*,int) ;
 int stub1 (struct thermal_zone_device*,int,int) ;

__attribute__((used)) static int int340x_thermal_set_trip_temp(struct thermal_zone_device *zone,
          int trip, int temp)
{
 struct int34x_thermal_zone *d = zone->devdata;
 acpi_status status;
 char name[10];

 if (d->override_ops && d->override_ops->set_trip_temp)
  return d->override_ops->set_trip_temp(zone, trip, temp);

 snprintf(name, sizeof(name), "PAT%d", trip);
 status = acpi_execute_simple_method(d->adev->handle, name,
   MILLICELSIUS_TO_DECI_KELVIN(temp));
 if (ACPI_FAILURE(status))
  return -EIO;

 d->aux_trips[trip] = temp;

 return 0;
}
