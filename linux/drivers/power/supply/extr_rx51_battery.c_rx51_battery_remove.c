
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx51_device_info {int channel_temp; int channel_bsi; int channel_vbat; int bat; } ;
struct platform_device {int dummy; } ;


 int iio_channel_release (int ) ;
 struct rx51_device_info* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int rx51_battery_remove(struct platform_device *pdev)
{
 struct rx51_device_info *di = platform_get_drvdata(pdev);

 power_supply_unregister(di->bat);

 iio_channel_release(di->channel_vbat);
 iio_channel_release(di->channel_bsi);
 iio_channel_release(di->channel_temp);

 return 0;
}
