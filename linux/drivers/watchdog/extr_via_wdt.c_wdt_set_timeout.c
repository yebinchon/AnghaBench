
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 scalar_t__ VIA_WDT_COUNT ;
 scalar_t__ wdt_mem ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int wdt_set_timeout(struct watchdog_device *wdd,
      unsigned int new_timeout)
{
 writel(new_timeout, wdt_mem + VIA_WDT_COUNT);
 wdd->timeout = new_timeout;
 return 0;
}
