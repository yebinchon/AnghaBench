
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retu_wdt_dev {int ping_work; int rdev; } ;


 int HZ ;
 int RETU_REG_WATCHDOG ;
 int RETU_WDT_MAX_TIMER ;
 int retu_write (int ,int ,int) ;
 int round_jiffies_relative (int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void retu_wdt_ping_enable(struct retu_wdt_dev *wdev)
{
 retu_write(wdev->rdev, RETU_REG_WATCHDOG, RETU_WDT_MAX_TIMER);
 schedule_delayed_work(&wdev->ping_work,
   round_jiffies_relative(RETU_WDT_MAX_TIMER * HZ / 2));
}
