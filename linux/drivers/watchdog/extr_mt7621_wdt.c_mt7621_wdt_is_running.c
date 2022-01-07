
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int TIMER_REG_TMR1CTL ;
 int TMR1CTL_ENABLE ;
 int rt_wdt_r32 (int ) ;

__attribute__((used)) static int mt7621_wdt_is_running(struct watchdog_device *w)
{
 return !!(rt_wdt_r32(TIMER_REG_TMR1CTL) & TMR1CTL_ENABLE);
}
