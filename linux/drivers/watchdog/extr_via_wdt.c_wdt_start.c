
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 scalar_t__ VIA_WDT_COUNT ;
 unsigned int VIA_WDT_RUNNING ;
 unsigned int VIA_WDT_TRIGGER ;
 scalar_t__ WDT_HEARTBEAT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 unsigned int readl (scalar_t__) ;
 int timer ;
 scalar_t__ wdt_mem ;
 int wdt_ping (struct watchdog_device*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int wdt_start(struct watchdog_device *wdd)
{
 unsigned int ctl = readl(wdt_mem);

 writel(wdd->timeout, wdt_mem + VIA_WDT_COUNT);
 writel(ctl | VIA_WDT_RUNNING | VIA_WDT_TRIGGER, wdt_mem);
 wdt_ping(wdd);
 mod_timer(&timer, jiffies + WDT_HEARTBEAT);
 return 0;
}
