
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;


 int __booke_wdt_enable ;
 int on_each_cpu (int ,struct watchdog_device*,int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int booke_wdt_start(struct watchdog_device *wdog)
{
 on_each_cpu(__booke_wdt_enable, wdog, 0);
 pr_debug("watchdog enabled (timeout = %u sec)\n", wdog->timeout);

 return 0;
}
