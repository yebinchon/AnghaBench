
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int TIMER_REG_TMRSTAT ;
 int TMR1CTL_RESTART ;
 int rt_wdt_w32 (int ,int ) ;

__attribute__((used)) static int mt7621_wdt_ping(struct watchdog_device *w)
{
 rt_wdt_w32(TIMER_REG_TMRSTAT, TMR1CTL_RESTART);

 return 0;
}
