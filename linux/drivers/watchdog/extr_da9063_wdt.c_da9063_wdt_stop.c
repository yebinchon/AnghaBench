
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct da9063 {int dev; } ;


 int da9063_wdt_disable_timer (struct da9063*) ;
 int dev_alert (int ,char*,int) ;
 struct da9063* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int da9063_wdt_stop(struct watchdog_device *wdd)
{
 struct da9063 *da9063 = watchdog_get_drvdata(wdd);
 int ret;

 ret = da9063_wdt_disable_timer(da9063);
 if (ret)
  dev_alert(da9063->dev, "Watchdog failed to stop (err = %d)\n",
     ret);

 return ret;
}
