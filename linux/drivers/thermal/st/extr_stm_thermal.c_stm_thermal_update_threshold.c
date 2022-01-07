
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_thermal_sensor {int mode; } ;


 int THERMAL_DEVICE_DISABLED ;
 int THERMAL_DEVICE_ENABLED ;
 int stm_disable_irq (struct stm_thermal_sensor*) ;
 int stm_enable_irq (struct stm_thermal_sensor*) ;
 int stm_sensor_power_off (struct stm_thermal_sensor*) ;
 int stm_sensor_power_on (struct stm_thermal_sensor*) ;
 int stm_thermal_set_threshold (struct stm_thermal_sensor*) ;

__attribute__((used)) static int stm_thermal_update_threshold(struct stm_thermal_sensor *sensor)
{
 int ret;

 sensor->mode = THERMAL_DEVICE_DISABLED;

 ret = stm_sensor_power_off(sensor);
 if (ret)
  return ret;

 ret = stm_disable_irq(sensor);
 if (ret)
  return ret;

 ret = stm_thermal_set_threshold(sensor);
 if (ret)
  return ret;

 ret = stm_enable_irq(sensor);
 if (ret)
  return ret;

 ret = stm_sensor_power_on(sensor);
 if (ret)
  return ret;

 sensor->mode = THERMAL_DEVICE_ENABLED;

 return 0;
}
