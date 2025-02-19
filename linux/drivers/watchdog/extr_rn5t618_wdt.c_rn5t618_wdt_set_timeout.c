
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct watchdog_device {int timeout; } ;
struct rn5t618_wdt {TYPE_1__* rn5t618; } ;
struct TYPE_5__ {int time; int reg_val; } ;
struct TYPE_4__ {int regmap; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 int RN5T618_WATCHDOG ;
 int RN5T618_WATCHDOG_WDOGTIM_M ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 TYPE_2__* rn5t618_wdt_map ;
 struct rn5t618_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int rn5t618_wdt_set_timeout(struct watchdog_device *wdt_dev,
       unsigned int t)
{
 struct rn5t618_wdt *wdt = watchdog_get_drvdata(wdt_dev);
 int ret, i;

 for (i = 0; i < ARRAY_SIZE(rn5t618_wdt_map); i++) {
  if (rn5t618_wdt_map[i].time + 1 >= t)
   break;
 }

 if (i == ARRAY_SIZE(rn5t618_wdt_map))
  return -EINVAL;

 ret = regmap_update_bits(wdt->rn5t618->regmap, RN5T618_WATCHDOG,
     RN5T618_WATCHDOG_WDOGTIM_M,
     rn5t618_wdt_map[i].reg_val);
 if (!ret)
  wdt_dev->timeout = rn5t618_wdt_map[i].time;

 return ret;
}
