
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int timeout; } ;
struct rn5t618_wdt {TYPE_1__* rn5t618; } ;
struct TYPE_2__ {int regmap; } ;


 int RN5T618_PWRIREN ;
 int RN5T618_PWRIRQ_IR_WDOG ;
 int RN5T618_REPCNT ;
 int RN5T618_REPCNT_REPWRON ;
 int RN5T618_WATCHDOG ;
 int RN5T618_WATCHDOG_WDOGEN ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int rn5t618_wdt_set_timeout (struct watchdog_device*,int ) ;
 struct rn5t618_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int rn5t618_wdt_start(struct watchdog_device *wdt_dev)
{
 struct rn5t618_wdt *wdt = watchdog_get_drvdata(wdt_dev);
 int ret;

 ret = rn5t618_wdt_set_timeout(wdt_dev, wdt_dev->timeout);
 if (ret)
  return ret;


 ret = regmap_update_bits(wdt->rn5t618->regmap, RN5T618_REPCNT,
     RN5T618_REPCNT_REPWRON,
     RN5T618_REPCNT_REPWRON);
 if (ret)
  return ret;


 ret = regmap_update_bits(wdt->rn5t618->regmap, RN5T618_WATCHDOG,
     RN5T618_WATCHDOG_WDOGEN,
     RN5T618_WATCHDOG_WDOGEN);
 if (ret)
  return ret;


 return regmap_update_bits(wdt->rn5t618->regmap, RN5T618_PWRIREN,
      RN5T618_PWRIRQ_IR_WDOG,
      RN5T618_PWRIRQ_IR_WDOG);
}
