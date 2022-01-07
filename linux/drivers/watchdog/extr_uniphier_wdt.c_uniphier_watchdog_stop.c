
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct uniphier_wdt_dev {int regmap; } ;


 int __uniphier_watchdog_stop (int ) ;
 struct uniphier_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int uniphier_watchdog_stop(struct watchdog_device *w)
{
 struct uniphier_wdt_dev *wdev = watchdog_get_drvdata(w);

 return __uniphier_watchdog_stop(wdev->regmap);
}
