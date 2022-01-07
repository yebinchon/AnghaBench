
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct twl4030_madc_battery {void* channel_temp; void* channel_ichg; void* channel_vbat; void* psy; struct twl4030_madc_bat_platform_data* pdata; } ;
struct twl4030_madc_bat_platform_data {int discharging_size; int discharging; int charging_size; int charging; } ;
struct twl4030_madc_bat_calibration {int dummy; } ;
struct power_supply_config {struct twl4030_madc_battery* drv_data; } ;
struct TYPE_4__ {struct twl4030_madc_bat_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 struct twl4030_madc_battery* devm_kzalloc (TYPE_1__*,int,int ) ;
 void* iio_channel_get (TYPE_1__*,char*) ;
 int iio_channel_release (void*) ;
 int platform_set_drvdata (struct platform_device*,struct twl4030_madc_battery*) ;
 void* power_supply_register (TYPE_1__*,int *,struct power_supply_config*) ;
 int sort (int ,int ,int,int ,int *) ;
 int twl4030_cmp ;
 int twl4030_madc_bat_desc ;

__attribute__((used)) static int twl4030_madc_battery_probe(struct platform_device *pdev)
{
 struct twl4030_madc_battery *twl4030_madc_bat;
 struct twl4030_madc_bat_platform_data *pdata = pdev->dev.platform_data;
 struct power_supply_config psy_cfg = {};
 int ret = 0;

 twl4030_madc_bat = devm_kzalloc(&pdev->dev, sizeof(*twl4030_madc_bat),
    GFP_KERNEL);
 if (!twl4030_madc_bat)
  return -ENOMEM;

 twl4030_madc_bat->channel_temp = iio_channel_get(&pdev->dev, "temp");
 if (IS_ERR(twl4030_madc_bat->channel_temp)) {
  ret = PTR_ERR(twl4030_madc_bat->channel_temp);
  goto err;
 }

 twl4030_madc_bat->channel_ichg = iio_channel_get(&pdev->dev, "ichg");
 if (IS_ERR(twl4030_madc_bat->channel_ichg)) {
  ret = PTR_ERR(twl4030_madc_bat->channel_ichg);
  goto err_temp;
 }

 twl4030_madc_bat->channel_vbat = iio_channel_get(&pdev->dev, "vbat");
 if (IS_ERR(twl4030_madc_bat->channel_vbat)) {
  ret = PTR_ERR(twl4030_madc_bat->channel_vbat);
  goto err_ichg;
 }


 sort(pdata->charging, pdata->charging_size,
  sizeof(struct twl4030_madc_bat_calibration),
  twl4030_cmp, ((void*)0));
 sort(pdata->discharging, pdata->discharging_size,
  sizeof(struct twl4030_madc_bat_calibration),
  twl4030_cmp, ((void*)0));

 twl4030_madc_bat->pdata = pdata;
 platform_set_drvdata(pdev, twl4030_madc_bat);
 psy_cfg.drv_data = twl4030_madc_bat;
 twl4030_madc_bat->psy = power_supply_register(&pdev->dev,
            &twl4030_madc_bat_desc,
            &psy_cfg);
 if (IS_ERR(twl4030_madc_bat->psy)) {
  ret = PTR_ERR(twl4030_madc_bat->psy);
  goto err_vbat;
 }

 return 0;

err_vbat:
 iio_channel_release(twl4030_madc_bat->channel_vbat);
err_ichg:
 iio_channel_release(twl4030_madc_bat->channel_ichg);
err_temp:
 iio_channel_release(twl4030_madc_bat->channel_temp);
err:
 return ret;
}
