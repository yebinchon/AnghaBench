
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct uniphier_wdt_dev {int regmap; } ;


 int __uniphier_watchdog_start (int ,unsigned int) ;
 unsigned int roundup_pow_of_two (int ) ;
 struct uniphier_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int uniphier_watchdog_start(struct watchdog_device *w)
{
 struct uniphier_wdt_dev *wdev = watchdog_get_drvdata(w);
 unsigned int tmp_timeout;

 tmp_timeout = roundup_pow_of_two(w->timeout);

 return __uniphier_watchdog_start(wdev->regmap, tmp_timeout);
}
