
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct da9063 {int dev; } ;


 int da9063_wdt_update_timeout (struct da9063*,int ) ;
 int dev_err (int ,char*,int) ;
 struct da9063* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int da9063_wdt_start(struct watchdog_device *wdd)
{
 struct da9063 *da9063 = watchdog_get_drvdata(wdd);
 int ret;

 ret = da9063_wdt_update_timeout(da9063, wdd->timeout);
 if (ret)
  dev_err(da9063->dev, "Watchdog failed to start (err = %d)\n",
   ret);

 return ret;
}
