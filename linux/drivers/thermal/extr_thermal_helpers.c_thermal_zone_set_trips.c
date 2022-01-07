
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {int trips; int temperature; int prev_low_trip; int prev_high_trip; int lock; int device; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_trips ) (struct thermal_zone_device*,int,int) ;int (* get_trip_hyst ) (struct thermal_zone_device*,int,int*) ;int (* get_trip_temp ) (struct thermal_zone_device*,int,int*) ;} ;


 int INT_MAX ;
 int dev_dbg (int *,char*,int,int) ;
 int dev_err (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct thermal_zone_device*,int,int*) ;
 int stub2 (struct thermal_zone_device*,int,int*) ;
 int stub3 (struct thermal_zone_device*,int,int) ;

void thermal_zone_set_trips(struct thermal_zone_device *tz)
{
 int low = -INT_MAX;
 int high = INT_MAX;
 int trip_temp, hysteresis;
 int i, ret;

 mutex_lock(&tz->lock);

 if (!tz->ops->set_trips || !tz->ops->get_trip_hyst)
  goto exit;

 for (i = 0; i < tz->trips; i++) {
  int trip_low;

  tz->ops->get_trip_temp(tz, i, &trip_temp);
  tz->ops->get_trip_hyst(tz, i, &hysteresis);

  trip_low = trip_temp - hysteresis;

  if (trip_low < tz->temperature && trip_low > low)
   low = trip_low;

  if (trip_temp > tz->temperature && trip_temp < high)
   high = trip_temp;
 }


 if (tz->prev_low_trip == low && tz->prev_high_trip == high)
  goto exit;

 tz->prev_low_trip = low;
 tz->prev_high_trip = high;

 dev_dbg(&tz->device,
  "new temperature boundaries: %d < x < %d\n", low, high);





 ret = tz->ops->set_trips(tz, low, high);
 if (ret)
  dev_err(&tz->device, "Failed to set trips: %d\n", ret);

exit:
 mutex_unlock(&tz->lock);
}
