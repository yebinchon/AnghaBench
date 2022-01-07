
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 int rza_wdt_start (struct watchdog_device*) ;

__attribute__((used)) static int rza_set_timeout(struct watchdog_device *wdev, unsigned int timeout)
{
 wdev->timeout = timeout;
 rza_wdt_start(wdev);
 return 0;
}
