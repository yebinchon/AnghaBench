
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
struct thermal_trip {scalar_t__ type; int hysteresis; int temperature; } ;
struct armada_thermal_priv {int interrupt_source; struct thermal_zone_device* overheat_sensor; } ;


 int EINVAL ;
 scalar_t__ THERMAL_TRIP_CRITICAL ;
 int armada_enable_overheat_interrupt (struct armada_thermal_priv*) ;
 int armada_select_channel (struct armada_thermal_priv*,int) ;
 int armada_set_overheat_thresholds (struct armada_thermal_priv*,int ,int ) ;
 int of_thermal_get_ntrips (struct thermal_zone_device*) ;
 struct thermal_trip* of_thermal_get_trip_points (struct thermal_zone_device*) ;

__attribute__((used)) static int armada_configure_overheat_int(struct armada_thermal_priv *priv,
      struct thermal_zone_device *tz,
      int sensor_id)
{

 const struct thermal_trip *trips = of_thermal_get_trip_points(tz);
 int ret;
 int i;

 if (!trips)
  return -EINVAL;

 for (i = 0; i < of_thermal_get_ntrips(tz); i++)
  if (trips[i].type == THERMAL_TRIP_CRITICAL)
   break;

 if (i == of_thermal_get_ntrips(tz))
  return -EINVAL;

 ret = armada_select_channel(priv, sensor_id);
 if (ret)
  return ret;

 armada_set_overheat_thresholds(priv,
           trips[i].temperature,
           trips[i].hysteresis);
 priv->overheat_sensor = tz;
 priv->interrupt_source = sensor_id;

 armada_enable_overheat_interrupt(priv);

 return 0;
}
