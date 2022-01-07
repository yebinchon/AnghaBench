
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_thermal_sensor {int clk; TYPE_1__* ops; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* power_ctrl ) (struct st_thermal_sensor*,int ) ;} ;


 int POWER_ON ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 int stub1 (struct st_thermal_sensor*,int ) ;

__attribute__((used)) static int st_thermal_sensor_on(struct st_thermal_sensor *sensor)
{
 int ret;
 struct device *dev = sensor->dev;

 ret = clk_prepare_enable(sensor->clk);
 if (ret) {
  dev_err(dev, "failed to enable clk\n");
  return ret;
 }

 ret = sensor->ops->power_ctrl(sensor, POWER_ON);
 if (ret) {
  dev_err(dev, "failed to power on sensor\n");
  clk_disable_unprepare(sensor->clk);
 }

 return ret;
}
