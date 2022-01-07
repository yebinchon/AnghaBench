
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct bcm_kona_wdt {int dummy; } ;


 unsigned int SECS_TO_TICKS (int ,struct bcm_kona_wdt*) ;
 int SECWDOG_COUNT_MASK ;
 int bcm_kona_wdt_ctrl_reg_modify (struct bcm_kona_wdt*,int ,unsigned int) ;
 struct bcm_kona_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int bcm_kona_wdt_set_timeout_reg(struct watchdog_device *wdog,
     unsigned watchdog_flags)
{
 struct bcm_kona_wdt *wdt = watchdog_get_drvdata(wdog);

 return bcm_kona_wdt_ctrl_reg_modify(wdt, SECWDOG_COUNT_MASK,
     SECS_TO_TICKS(wdog->timeout, wdt) |
     watchdog_flags);
}
