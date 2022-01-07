
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;


 int HZ ;
 scalar_t__ jiffies ;
 scalar_t__ next_heartbeat ;

__attribute__((used)) static int wdt_ping(struct watchdog_device *wdd)
{

 next_heartbeat = jiffies + wdd->timeout * HZ;
 return 0;
}
