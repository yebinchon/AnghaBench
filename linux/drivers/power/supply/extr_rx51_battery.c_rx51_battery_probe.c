
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int get_property; int num_properties; int properties; int type; } ;
struct rx51_device_info {void* channel_temp; void* channel_bsi; void* channel_vbat; void* bat; TYPE_1__ bat_desc; int * dev; } ;
struct power_supply_config {struct rx51_device_info* drv_data; } ;
struct platform_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int POWER_SUPPLY_TYPE_BATTERY ;
 int PTR_ERR (void*) ;
 struct rx51_device_info* devm_kzalloc (int *,int,int ) ;
 void* iio_channel_get (int *,char*) ;
 int iio_channel_release (void*) ;
 int platform_set_drvdata (struct platform_device*,struct rx51_device_info*) ;
 void* power_supply_register (int *,TYPE_1__*,struct power_supply_config*) ;
 int rx51_battery_get_property ;
 int rx51_battery_props ;

__attribute__((used)) static int rx51_battery_probe(struct platform_device *pdev)
{
 struct power_supply_config psy_cfg = {};
 struct rx51_device_info *di;
 int ret;

 di = devm_kzalloc(&pdev->dev, sizeof(*di), GFP_KERNEL);
 if (!di)
  return -ENOMEM;

 platform_set_drvdata(pdev, di);

 di->dev = &pdev->dev;
 di->bat_desc.name = "rx51-battery";
 di->bat_desc.type = POWER_SUPPLY_TYPE_BATTERY;
 di->bat_desc.properties = rx51_battery_props;
 di->bat_desc.num_properties = ARRAY_SIZE(rx51_battery_props);
 di->bat_desc.get_property = rx51_battery_get_property;

 psy_cfg.drv_data = di;

 di->channel_temp = iio_channel_get(di->dev, "temp");
 if (IS_ERR(di->channel_temp)) {
  ret = PTR_ERR(di->channel_temp);
  goto error;
 }

 di->channel_bsi = iio_channel_get(di->dev, "bsi");
 if (IS_ERR(di->channel_bsi)) {
  ret = PTR_ERR(di->channel_bsi);
  goto error_channel_temp;
 }

 di->channel_vbat = iio_channel_get(di->dev, "vbat");
 if (IS_ERR(di->channel_vbat)) {
  ret = PTR_ERR(di->channel_vbat);
  goto error_channel_bsi;
 }

 di->bat = power_supply_register(di->dev, &di->bat_desc, &psy_cfg);
 if (IS_ERR(di->bat)) {
  ret = PTR_ERR(di->bat);
  goto error_channel_vbat;
 }

 return 0;

error_channel_vbat:
 iio_channel_release(di->channel_vbat);
error_channel_bsi:
 iio_channel_release(di->channel_bsi);
error_channel_temp:
 iio_channel_release(di->channel_temp);
error:

 return ret;
}
