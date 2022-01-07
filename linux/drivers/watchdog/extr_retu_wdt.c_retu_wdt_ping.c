
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct retu_wdt_dev {int rdev; } ;


 int RETU_REG_WATCHDOG ;
 int retu_write (int ,int ,int ) ;
 struct retu_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int retu_wdt_ping(struct watchdog_device *wdog)
{
 struct retu_wdt_dev *wdev = watchdog_get_drvdata(wdog);

 return retu_write(wdev->rdev, RETU_REG_WATCHDOG, wdog->timeout);
}
