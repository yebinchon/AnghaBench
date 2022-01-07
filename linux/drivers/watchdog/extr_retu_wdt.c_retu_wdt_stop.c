
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct retu_wdt_dev {int dummy; } ;


 int retu_wdt_ping_enable (struct retu_wdt_dev*) ;
 struct retu_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int retu_wdt_stop(struct watchdog_device *wdog)
{
 struct retu_wdt_dev *wdev = watchdog_get_drvdata(wdog);

 retu_wdt_ping_enable(wdev);

 return 0;
}
