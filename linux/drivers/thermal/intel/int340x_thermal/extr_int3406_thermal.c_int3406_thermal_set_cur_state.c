
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_cooling_device {struct int3406_thermal_data* devdata; } ;
struct int3406_thermal_data {unsigned long upper_limit; unsigned long lower_limit; int raw_bd; TYPE_1__* br; } ;
struct TYPE_2__ {int* levels; } ;


 int ACPI_TO_RAW (int,struct int3406_thermal_data*) ;
 int EINVAL ;
 int backlight_device_set_brightness (int ,int) ;

__attribute__((used)) static int
int3406_thermal_set_cur_state(struct thermal_cooling_device *cooling_dev,
         unsigned long state)
{
 struct int3406_thermal_data *d = cooling_dev->devdata;
 int acpi_level, raw_level;

 if (state > d->upper_limit - d->lower_limit)
  return -EINVAL;

 acpi_level = d->br->levels[d->upper_limit - state];

 raw_level = ACPI_TO_RAW(acpi_level, d);

 return backlight_device_set_brightness(d->raw_bd, raw_level);
}
