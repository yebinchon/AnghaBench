
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct int3406_thermal_data* devdata; } ;
struct int3406_thermal_data {unsigned long upper_limit; unsigned long lower_limit; } ;



__attribute__((used)) static int
int3406_thermal_get_max_state(struct thermal_cooling_device *cooling_dev,
         unsigned long *state)
{
 struct int3406_thermal_data *d = cooling_dev->devdata;

 *state = d->upper_limit - d->lower_limit;
 return 0;
}
