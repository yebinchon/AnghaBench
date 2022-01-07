
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;


 int TIMER_REG_TMR1LOAD ;
 int rt288x_wdt_freq ;
 int rt_wdt_w32 (int ,int) ;

__attribute__((used)) static int rt288x_wdt_ping(struct watchdog_device *w)
{
 rt_wdt_w32(TIMER_REG_TMR1LOAD, w->timeout * rt288x_wdt_freq);

 return 0;
}
