
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;



__attribute__((used)) static int atlas7_wdt_settimeout(struct watchdog_device *wdd, unsigned int to)
{
 wdd->timeout = to;

 return 0;
}
