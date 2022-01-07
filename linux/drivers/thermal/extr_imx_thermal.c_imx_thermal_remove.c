
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct platform_device {int dummy; } ;
struct imx_thermal_data {int policy; int cdev; int tz; int thermal_clk; TYPE_1__* socdata; struct regmap* tempmon; } ;
struct TYPE_2__ {int power_down_mask; scalar_t__ sensor_ctrl; } ;


 int IS_ERR (int ) ;
 scalar_t__ REG_SET ;
 int clk_disable_unprepare (int ) ;
 int cpufreq_cooling_unregister (int ) ;
 int cpufreq_cpu_put (int ) ;
 struct imx_thermal_data* platform_get_drvdata (struct platform_device*) ;
 int regmap_write (struct regmap*,scalar_t__,int ) ;
 int thermal_zone_device_unregister (int ) ;

__attribute__((used)) static int imx_thermal_remove(struct platform_device *pdev)
{
 struct imx_thermal_data *data = platform_get_drvdata(pdev);
 struct regmap *map = data->tempmon;


 regmap_write(map, data->socdata->sensor_ctrl + REG_SET,
       data->socdata->power_down_mask);
 if (!IS_ERR(data->thermal_clk))
  clk_disable_unprepare(data->thermal_clk);

 thermal_zone_device_unregister(data->tz);
 cpufreq_cooling_unregister(data->cdev);
 cpufreq_cpu_put(data->policy);

 return 0;
}
