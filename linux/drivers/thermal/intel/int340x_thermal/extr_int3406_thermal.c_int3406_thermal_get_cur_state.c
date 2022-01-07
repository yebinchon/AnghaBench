
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thermal_cooling_device {struct int3406_thermal_data* devdata; } ;
struct int3406_thermal_data {int lower_limit; int upper_limit; TYPE_1__* br; TYPE_3__* raw_bd; } ;
struct TYPE_5__ {int brightness; } ;
struct TYPE_6__ {TYPE_2__ props; } ;
struct TYPE_4__ {int* levels; } ;


 int RAW_TO_ACPI (int ,struct int3406_thermal_data*) ;

__attribute__((used)) static int
int3406_thermal_get_cur_state(struct thermal_cooling_device *cooling_dev,
         unsigned long *state)
{
 struct int3406_thermal_data *d = cooling_dev->devdata;
 int acpi_level;
 int index;

 acpi_level = RAW_TO_ACPI(d->raw_bd->props.brightness, d);






 for (index = d->lower_limit; index < d->upper_limit; index++) {
  if (acpi_level <= d->br->levels[index])
   break;
 }

 *state = d->upper_limit - index;
 return 0;
}
