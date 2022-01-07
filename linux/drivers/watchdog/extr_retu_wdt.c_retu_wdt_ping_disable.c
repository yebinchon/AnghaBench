
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retu_wdt_dev {int ping_work; int rdev; } ;


 int RETU_REG_WATCHDOG ;
 int RETU_WDT_MAX_TIMER ;
 int cancel_delayed_work_sync (int *) ;
 int retu_write (int ,int ,int ) ;

__attribute__((used)) static void retu_wdt_ping_disable(struct retu_wdt_dev *wdev)
{
 retu_write(wdev->rdev, RETU_REG_WATCHDOG, RETU_WDT_MAX_TIMER);
 cancel_delayed_work_sync(&wdev->ping_work);
}
