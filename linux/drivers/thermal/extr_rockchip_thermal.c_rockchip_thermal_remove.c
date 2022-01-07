
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_thermal_sensor {int dummy; } ;
struct rockchip_thermal_data {int clk; int pclk; int regs; TYPE_1__* chip; struct rockchip_thermal_sensor* sensors; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int chn_num; int (* control ) (int ,int) ;} ;


 int clk_disable_unprepare (int ) ;
 struct rockchip_thermal_data* platform_get_drvdata (struct platform_device*) ;
 int rockchip_thermal_toggle_sensor (struct rockchip_thermal_sensor*,int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int rockchip_thermal_remove(struct platform_device *pdev)
{
 struct rockchip_thermal_data *thermal = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < thermal->chip->chn_num; i++) {
  struct rockchip_thermal_sensor *sensor = &thermal->sensors[i];

  rockchip_thermal_toggle_sensor(sensor, 0);
 }

 thermal->chip->control(thermal->regs, 0);

 clk_disable_unprepare(thermal->pclk);
 clk_disable_unprepare(thermal->clk);

 return 0;
}
