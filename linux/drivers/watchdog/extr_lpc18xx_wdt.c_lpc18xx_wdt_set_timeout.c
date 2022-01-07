
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int dummy; } ;
struct TYPE_2__ {unsigned int timeout; } ;
struct lpc18xx_wdt_dev {TYPE_1__ wdt_dev; } ;


 int __lpc18xx_wdt_set_timeout (struct lpc18xx_wdt_dev*) ;
 struct lpc18xx_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int lpc18xx_wdt_set_timeout(struct watchdog_device *wdt_dev,
       unsigned int new_timeout)
{
 struct lpc18xx_wdt_dev *lpc18xx_wdt = watchdog_get_drvdata(wdt_dev);

 lpc18xx_wdt->wdt_dev.timeout = new_timeout;
 __lpc18xx_wdt_set_timeout(lpc18xx_wdt);

 return 0;
}
