
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {TYPE_1__* ops; } ;
struct rockchip_thermal_sensor {struct thermal_zone_device* tzd; } ;
struct TYPE_2__ {int (* set_mode ) (struct thermal_zone_device*,int ) ;} ;


 int THERMAL_DEVICE_DISABLED ;
 int THERMAL_DEVICE_ENABLED ;
 int stub1 (struct thermal_zone_device*,int ) ;

__attribute__((used)) static void
rockchip_thermal_toggle_sensor(struct rockchip_thermal_sensor *sensor, bool on)
{
 struct thermal_zone_device *tzd = sensor->tzd;

 tzd->ops->set_mode(tzd,
  on ? THERMAL_DEVICE_ENABLED : THERMAL_DEVICE_DISABLED);
}
