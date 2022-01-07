
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int dummy; } ;
struct rn5t618_wdt {TYPE_1__* rn5t618; } ;
struct TYPE_2__ {int regmap; } ;


 int RN5T618_PWRIRQ ;
 int RN5T618_PWRIRQ_IR_WDOG ;
 int RN5T618_WATCHDOG ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,unsigned int) ;
 struct rn5t618_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int rn5t618_wdt_ping(struct watchdog_device *wdt_dev)
{
 struct rn5t618_wdt *wdt = watchdog_get_drvdata(wdt_dev);
 unsigned int val;
 int ret;


 ret = regmap_read(wdt->rn5t618->regmap, RN5T618_WATCHDOG, &val);
 if (ret)
  return ret;

 ret = regmap_write(wdt->rn5t618->regmap, RN5T618_WATCHDOG, val);
 if (ret)
  return ret;


 return regmap_update_bits(wdt->rn5t618->regmap, RN5T618_PWRIRQ,
      RN5T618_PWRIRQ_IR_WDOG, 0);
}
