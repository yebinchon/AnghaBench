
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
typedef enum thermal_device_mode { ____Placeholder_thermal_device_mode } thermal_device_mode ;


 int THERMAL_DEVICE_ENABLED ;
 int dts_update_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int soc_dts_disable (struct thermal_zone_device*) ;
 int soc_dts_enable (struct thermal_zone_device*) ;

__attribute__((used)) static int sys_set_mode(struct thermal_zone_device *tzd,
    enum thermal_device_mode mode)
{
 int ret;

 mutex_lock(&dts_update_mutex);
 if (mode == THERMAL_DEVICE_ENABLED)
  ret = soc_dts_enable(tzd);
 else
  ret = soc_dts_disable(tzd);
 mutex_unlock(&dts_update_mutex);

 return ret;
}
