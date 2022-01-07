
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
struct rcar_thermal_priv {int dummy; } ;
struct device {int dummy; } ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;



 int dev_warn (struct device*,char*) ;
 struct device* rcar_priv_to_dev (struct rcar_thermal_priv*) ;
 struct rcar_thermal_priv* rcar_zone_to_priv (struct thermal_zone_device*) ;

__attribute__((used)) static int rcar_thermal_notify(struct thermal_zone_device *zone,
          int trip, enum thermal_trip_type type)
{
 struct rcar_thermal_priv *priv = rcar_zone_to_priv(zone);
 struct device *dev = rcar_priv_to_dev(priv);

 switch (type) {
 case 128:

  dev_warn(dev, "Thermal reached to critical temperature\n");
  break;
 default:
  break;
 }

 return 0;
}
