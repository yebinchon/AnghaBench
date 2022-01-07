
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_madc_battery {int channel_temp; int channel_ichg; int channel_vbat; int psy; } ;
struct platform_device {int dummy; } ;


 int iio_channel_release (int ) ;
 struct twl4030_madc_battery* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int twl4030_madc_battery_remove(struct platform_device *pdev)
{
 struct twl4030_madc_battery *bat = platform_get_drvdata(pdev);

 power_supply_unregister(bat->psy);

 iio_channel_release(bat->channel_vbat);
 iio_channel_release(bat->channel_ichg);
 iio_channel_release(bat->channel_temp);

 return 0;
}
