
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct da9063 {int dev; int regmap; } ;


 int DA9063_REG_CONTROL_F ;
 int DA9063_WATCHDOG ;
 int dev_alert (int ,char*,int) ;
 int regmap_write (int ,int ,int ) ;
 struct da9063* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int da9063_wdt_ping(struct watchdog_device *wdd)
{
 struct da9063 *da9063 = watchdog_get_drvdata(wdd);
 int ret;

 ret = regmap_write(da9063->regmap, DA9063_REG_CONTROL_F,
      DA9063_WATCHDOG);
 if (ret)
  dev_alert(da9063->dev, "Failed to ping the watchdog (err = %d)\n",
     ret);

 return ret;
}
