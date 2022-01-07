
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; int parent; } ;


 int dev_dbg (int ,char*,unsigned int,unsigned int) ;
 int pcf2127_wdt_active_ping (struct watchdog_device*) ;

__attribute__((used)) static int pcf2127_wdt_set_timeout(struct watchdog_device *wdd,
       unsigned int new_timeout)
{
 dev_dbg(wdd->parent, "new watchdog timeout: %is (old: %is)\n",
  new_timeout, wdd->timeout);

 wdd->timeout = new_timeout;

 return pcf2127_wdt_active_ping(wdd);
}
