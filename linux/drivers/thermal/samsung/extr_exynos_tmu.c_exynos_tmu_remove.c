
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
struct platform_device {int dev; } ;
struct exynos_tmu_data {int regulator; int clk_sec; int clk; int sclk; struct thermal_zone_device* tzd; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_unprepare (int ) ;
 int exynos_tmu_control (struct platform_device*,int) ;
 struct exynos_tmu_data* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;
 int thermal_zone_of_sensor_unregister (int *,struct thermal_zone_device*) ;

__attribute__((used)) static int exynos_tmu_remove(struct platform_device *pdev)
{
 struct exynos_tmu_data *data = platform_get_drvdata(pdev);
 struct thermal_zone_device *tzd = data->tzd;

 thermal_zone_of_sensor_unregister(&pdev->dev, tzd);
 exynos_tmu_control(pdev, 0);

 clk_disable_unprepare(data->sclk);
 clk_unprepare(data->clk);
 if (!IS_ERR(data->clk_sec))
  clk_unprepare(data->clk_sec);

 if (!IS_ERR(data->regulator))
  regulator_disable(data->regulator);

 return 0;
}
