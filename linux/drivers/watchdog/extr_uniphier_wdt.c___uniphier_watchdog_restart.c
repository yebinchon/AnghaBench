
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int __uniphier_watchdog_start (struct regmap*,unsigned int) ;
 int __uniphier_watchdog_stop (struct regmap*) ;

__attribute__((used)) static int __uniphier_watchdog_restart(struct regmap *regmap, unsigned int sec)
{
 int ret;

 ret = __uniphier_watchdog_stop(regmap);
 if (ret)
  return ret;

 return __uniphier_watchdog_start(regmap, sec);
}
