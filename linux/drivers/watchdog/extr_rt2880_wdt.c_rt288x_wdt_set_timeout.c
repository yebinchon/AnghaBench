
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 int rt288x_wdt_ping (struct watchdog_device*) ;

__attribute__((used)) static int rt288x_wdt_set_timeout(struct watchdog_device *w, unsigned int t)
{
 w->timeout = t;
 rt288x_wdt_ping(w);

 return 0;
}
