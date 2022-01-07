
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds3232 {int dummy; } ;
struct device {int dummy; } ;


 int CONFIG_RTC_DRV_DS3232_HWMON ;
 int IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 int dev_err (struct device*,char*,int ) ;
 struct ds3232* dev_get_drvdata (struct device*) ;
 struct device* devm_hwmon_device_register_with_info (struct device*,char const*,struct ds3232*,int *,int *) ;
 int ds3232_hwmon_chip_info ;

__attribute__((used)) static void ds3232_hwmon_register(struct device *dev, const char *name)
{
 struct ds3232 *ds3232 = dev_get_drvdata(dev);
 struct device *hwmon_dev;

 if (!IS_ENABLED(CONFIG_RTC_DRV_DS3232_HWMON))
  return;

 hwmon_dev = devm_hwmon_device_register_with_info(dev, name, ds3232,
       &ds3232_hwmon_chip_info,
       ((void*)0));
 if (IS_ERR(hwmon_dev)) {
  dev_err(dev, "unable to register hwmon device %ld\n",
   PTR_ERR(hwmon_dev));
 }
}
