
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_trip {scalar_t__ type; } ;
struct qpnp_tm_chip {int lock; int tz_dev; } ;


 int EINVAL ;
 scalar_t__ THERMAL_TRIP_CRITICAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct thermal_trip* of_thermal_get_trip_points (int ) ;
 int qpnp_tm_update_critical_trip_temp (struct qpnp_tm_chip*,int) ;

__attribute__((used)) static int qpnp_tm_set_trip_temp(void *data, int trip, int temp)
{
 struct qpnp_tm_chip *chip = data;
 const struct thermal_trip *trip_points;
 int ret;

 trip_points = of_thermal_get_trip_points(chip->tz_dev);
 if (!trip_points)
  return -EINVAL;

 if (trip_points[trip].type != THERMAL_TRIP_CRITICAL)
  return 0;

 mutex_lock(&chip->lock);
 ret = qpnp_tm_update_critical_trip_temp(chip, temp);
 mutex_unlock(&chip->lock);

 return ret;
}
