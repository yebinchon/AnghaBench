
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int timeout; } ;
struct da9062_watchdog {TYPE_1__* hw; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int da9062_wdt_timeout_to_sel (unsigned int) ;
 int da9062_wdt_update_timeout_register (struct da9062_watchdog*,unsigned int) ;
 int dev_err (int ,char*,int) ;
 struct da9062_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;
 int * wdt_timeout ;

__attribute__((used)) static int da9062_wdt_set_timeout(struct watchdog_device *wdd,
      unsigned int timeout)
{
 struct da9062_watchdog *wdt = watchdog_get_drvdata(wdd);
 unsigned int selector;
 int ret;

 selector = da9062_wdt_timeout_to_sel(timeout);
 ret = da9062_wdt_update_timeout_register(wdt, selector);
 if (ret)
  dev_err(wdt->hw->dev, "Failed to set watchdog timeout (err = %d)\n",
   ret);
 else
  wdd->timeout = wdt_timeout[selector];

 return ret;
}
