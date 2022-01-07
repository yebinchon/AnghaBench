
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct watchdog_device {int dummy; } ;
struct TYPE_3__ {int timeout; } ;
struct da9062_watchdog {TYPE_2__* hw; TYPE_1__ wdtdev; } ;
struct TYPE_4__ {int dev; } ;


 unsigned int da9062_wdt_timeout_to_sel (int ) ;
 int da9062_wdt_update_timeout_register (struct da9062_watchdog*,unsigned int) ;
 int dev_err (int ,char*,int) ;
 struct da9062_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int da9062_wdt_start(struct watchdog_device *wdd)
{
 struct da9062_watchdog *wdt = watchdog_get_drvdata(wdd);
 unsigned int selector;
 int ret;

 selector = da9062_wdt_timeout_to_sel(wdt->wdtdev.timeout);
 ret = da9062_wdt_update_timeout_register(wdt, selector);
 if (ret)
  dev_err(wdt->hw->dev, "Watchdog failed to start (err = %d)\n",
   ret);

 return ret;
}
