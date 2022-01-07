
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 int TIMER_REG_TMR1LOAD ;
 int mt7621_wdt_ping (struct watchdog_device*) ;
 int rt_wdt_w32 (int ,unsigned int) ;

__attribute__((used)) static int mt7621_wdt_set_timeout(struct watchdog_device *w, unsigned int t)
{
 w->timeout = t;
 rt_wdt_w32(TIMER_REG_TMR1LOAD, t * 1000);
 mt7621_wdt_ping(w);

 return 0;
}
