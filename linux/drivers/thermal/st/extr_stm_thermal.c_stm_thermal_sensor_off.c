
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_thermal_sensor {int clk; } ;


 int clk_disable_unprepare (int ) ;
 int stm_sensor_power_off (struct stm_thermal_sensor*) ;

__attribute__((used)) static int stm_thermal_sensor_off(struct stm_thermal_sensor *sensor)
{
 int ret;

 ret = stm_sensor_power_off(sensor);
 if (ret)
  return ret;

 clk_disable_unprepare(sensor->clk);

 return 0;
}
