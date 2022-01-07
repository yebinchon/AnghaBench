
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {int temperature; int passive; int device; TYPE_1__* ops; struct power_allocator_params* governor_data; } ;
struct power_allocator_params {int trip_max_desired_temperature; int trip_switch_on; } ;
struct TYPE_2__ {int (* get_trip_temp ) (struct thermal_zone_device*,int,int*) ;} ;


 int allocate_power (struct thermal_zone_device*,int) ;
 int allow_maximum_power (struct thermal_zone_device*) ;
 int dev_warn (int *,char*,int) ;
 int reset_pid_controller (struct power_allocator_params*) ;
 int stub1 (struct thermal_zone_device*,int,int*) ;
 int stub2 (struct thermal_zone_device*,int,int*) ;

__attribute__((used)) static int power_allocator_throttle(struct thermal_zone_device *tz, int trip)
{
 int ret;
 int switch_on_temp, control_temp;
 struct power_allocator_params *params = tz->governor_data;





 if (trip != params->trip_max_desired_temperature)
  return 0;

 ret = tz->ops->get_trip_temp(tz, params->trip_switch_on,
         &switch_on_temp);
 if (!ret && (tz->temperature < switch_on_temp)) {
  tz->passive = 0;
  reset_pid_controller(params);
  allow_maximum_power(tz);
  return 0;
 }

 tz->passive = 1;

 ret = tz->ops->get_trip_temp(tz, params->trip_max_desired_temperature,
    &control_temp);
 if (ret) {
  dev_warn(&tz->device,
    "Failed to get the maximum desired temperature: %d\n",
    ret);
  return ret;
 }

 return allocate_power(tz, control_temp);
}
