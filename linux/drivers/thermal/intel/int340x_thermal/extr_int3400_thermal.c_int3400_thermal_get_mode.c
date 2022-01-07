
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct int3400_thermal_priv* devdata; } ;
struct int3400_thermal_priv {int mode; } ;
typedef enum thermal_device_mode { ____Placeholder_thermal_device_mode } thermal_device_mode ;


 int EINVAL ;

__attribute__((used)) static int int3400_thermal_get_mode(struct thermal_zone_device *thermal,
    enum thermal_device_mode *mode)
{
 struct int3400_thermal_priv *priv = thermal->devdata;

 if (!priv)
  return -EINVAL;

 *mode = priv->mode;

 return 0;
}
