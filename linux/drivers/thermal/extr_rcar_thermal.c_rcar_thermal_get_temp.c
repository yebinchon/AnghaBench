
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
struct rcar_thermal_priv {int dummy; } ;


 int rcar_thermal_get_current_temp (struct rcar_thermal_priv*,int*) ;
 struct rcar_thermal_priv* rcar_zone_to_priv (struct thermal_zone_device*) ;

__attribute__((used)) static int rcar_thermal_get_temp(struct thermal_zone_device *zone, int *temp)
{
 struct rcar_thermal_priv *priv = rcar_zone_to_priv(zone);

 return rcar_thermal_get_current_temp(priv, temp);
}
