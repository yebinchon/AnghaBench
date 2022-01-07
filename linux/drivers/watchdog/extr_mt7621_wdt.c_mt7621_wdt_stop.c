
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int dummy; } ;


 int TIMER_REG_TMR1CTL ;
 int TMR1CTL_ENABLE ;
 int mt7621_wdt_ping (struct watchdog_device*) ;
 int rt_wdt_r32 (int ) ;
 int rt_wdt_w32 (int ,int ) ;

__attribute__((used)) static int mt7621_wdt_stop(struct watchdog_device *w)
{
 u32 t;

 mt7621_wdt_ping(w);

 t = rt_wdt_r32(TIMER_REG_TMR1CTL);
 t &= ~TMR1CTL_ENABLE;
 rt_wdt_w32(TIMER_REG_TMR1CTL, t);

 return 0;
}
