
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int dummy; } ;
struct da9062_watchdog {TYPE_1__* hw; } ;
struct TYPE_2__ {int dev; int regmap; } ;


 int DA9062AA_CONTROL_F ;
 int DA9062AA_SHUTDOWN_MASK ;
 int dev_alert (int ,char*,int) ;
 int mdelay (int) ;
 int regmap_write (int ,int ,int ) ;
 struct da9062_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int da9062_wdt_restart(struct watchdog_device *wdd, unsigned long action,
         void *data)
{
 struct da9062_watchdog *wdt = watchdog_get_drvdata(wdd);
 int ret;

 ret = regmap_write(wdt->hw->regmap,
      DA9062AA_CONTROL_F,
      DA9062AA_SHUTDOWN_MASK);
 if (ret)
  dev_alert(wdt->hw->dev, "Failed to shutdown (err = %d)\n",
     ret);


 mdelay(500);

 return ret;
}
