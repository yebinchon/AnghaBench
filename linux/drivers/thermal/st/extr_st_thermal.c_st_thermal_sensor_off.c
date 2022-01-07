
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_thermal_sensor {int clk; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* power_ctrl ) (struct st_thermal_sensor*,int ) ;} ;


 int POWER_OFF ;
 int clk_disable_unprepare (int ) ;
 int stub1 (struct st_thermal_sensor*,int ) ;

__attribute__((used)) static int st_thermal_sensor_off(struct st_thermal_sensor *sensor)
{
 int ret;

 ret = sensor->ops->power_ctrl(sensor, POWER_OFF);
 if (ret)
  return ret;

 clk_disable_unprepare(sensor->clk);

 return 0;
}
