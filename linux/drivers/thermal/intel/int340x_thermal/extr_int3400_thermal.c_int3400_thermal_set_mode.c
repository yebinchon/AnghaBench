
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {struct int3400_thermal_priv* devdata; } ;
struct int3400_thermal_priv {int mode; int current_uuid_index; TYPE_1__* adev; } ;
typedef enum thermal_device_mode { ____Placeholder_thermal_device_mode } thermal_device_mode ;
struct TYPE_2__ {int handle; } ;


 int EINVAL ;
 int THERMAL_DEVICE_DISABLED ;
 int THERMAL_DEVICE_ENABLED ;
 int int3400_thermal_run_osc (int ,int ,int) ;

__attribute__((used)) static int int3400_thermal_set_mode(struct thermal_zone_device *thermal,
    enum thermal_device_mode mode)
{
 struct int3400_thermal_priv *priv = thermal->devdata;
 bool enable;
 int result = 0;

 if (!priv)
  return -EINVAL;

 if (mode == THERMAL_DEVICE_ENABLED)
  enable = 1;
 else if (mode == THERMAL_DEVICE_DISABLED)
  enable = 0;
 else
  return -EINVAL;

 if (enable != priv->mode) {
  priv->mode = enable;
  result = int3400_thermal_run_osc(priv->adev->handle,
       priv->current_uuid_index,
       enable);
 }
 return result;
}
