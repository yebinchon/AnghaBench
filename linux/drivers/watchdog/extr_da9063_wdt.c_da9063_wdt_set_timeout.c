
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct da9063 {int dev; } ;


 size_t da9063_wdt_timeout_to_sel (unsigned int) ;
 int da9063_wdt_update_timeout (struct da9063*,unsigned int) ;
 int dev_err (int ,char*,int) ;
 scalar_t__ watchdog_active (struct watchdog_device*) ;
 struct da9063* watchdog_get_drvdata (struct watchdog_device*) ;
 int * wdt_timeout ;

__attribute__((used)) static int da9063_wdt_set_timeout(struct watchdog_device *wdd,
      unsigned int timeout)
{
 struct da9063 *da9063 = watchdog_get_drvdata(wdd);
 int ret = 0;
 if (watchdog_active(wdd))
  ret = da9063_wdt_update_timeout(da9063, timeout);

 if (ret)
  dev_err(da9063->dev, "Failed to set watchdog timeout (err = %d)\n",
   ret);
 else
  wdd->timeout = wdt_timeout[da9063_wdt_timeout_to_sel(timeout)];

 return ret;
}
