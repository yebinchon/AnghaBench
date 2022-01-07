
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct gpd_pocket_fan_data {void* gpio1; int * dev; void* gpio0; void* dts1; void* dts0; int work; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_ASIS ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (void*) ;
 int MAX_SPEED ;
 int PTR_ERR (void*) ;
 int dev_err (int *,char*,int) ;
 void* devm_gpiod_get_index (int *,int *,int,int ) ;
 struct gpd_pocket_fan_data* devm_kzalloc (int *,int,int ) ;
 int gpd_pocket_fan_force_update (struct gpd_pocket_fan_data*) ;
 int gpd_pocket_fan_worker ;
 int hysteresis ;
 int platform_set_drvdata (struct platform_device*,struct gpd_pocket_fan_data*) ;
 int speed_on_ac ;
 int* temp_limits ;
 void* thermal_zone_get_zone_by_name (char*) ;

__attribute__((used)) static int gpd_pocket_fan_probe(struct platform_device *pdev)
{
 struct gpd_pocket_fan_data *fan;
 int i;

 for (i = 0; i < ARRAY_SIZE(temp_limits); i++) {
  if (temp_limits[i] < 40000 || temp_limits[i] > 70000) {
   dev_err(&pdev->dev, "Invalid temp-limit %d (must be between 40000 and 70000)\n",
    temp_limits[i]);
   return -EINVAL;
  }
 }
 if (hysteresis < 1000 || hysteresis > 10000) {
  dev_err(&pdev->dev, "Invalid hysteresis %d (must be between 1000 and 10000)\n",
   hysteresis);
  return -EINVAL;
 }
 if (speed_on_ac < 0 || speed_on_ac > MAX_SPEED) {
  dev_err(&pdev->dev, "Invalid speed_on_ac %d (must be between 0 and 3)\n",
   speed_on_ac);
  return -EINVAL;
 }

 fan = devm_kzalloc(&pdev->dev, sizeof(*fan), GFP_KERNEL);
 if (!fan)
  return -ENOMEM;

 fan->dev = &pdev->dev;
 INIT_DELAYED_WORK(&fan->work, gpd_pocket_fan_worker);


 fan->dts0 = thermal_zone_get_zone_by_name("soc_dts0");
 if (IS_ERR(fan->dts0))
  return -EPROBE_DEFER;

 fan->dts1 = thermal_zone_get_zone_by_name("soc_dts1");
 if (IS_ERR(fan->dts1))
  return -EPROBE_DEFER;

 fan->gpio0 = devm_gpiod_get_index(fan->dev, ((void*)0), 0, GPIOD_ASIS);
 if (IS_ERR(fan->gpio0))
  return PTR_ERR(fan->gpio0);

 fan->gpio1 = devm_gpiod_get_index(fan->dev, ((void*)0), 1, GPIOD_ASIS);
 if (IS_ERR(fan->gpio1))
  return PTR_ERR(fan->gpio1);

 gpd_pocket_fan_force_update(fan);

 platform_set_drvdata(pdev, fan);
 return 0;
}
