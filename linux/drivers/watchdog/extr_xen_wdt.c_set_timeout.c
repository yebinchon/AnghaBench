
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time64_t ;
struct watchdog_device {scalar_t__ timeout; } ;
struct TYPE_2__ {scalar_t__ timeout; } ;


 scalar_t__ ktime_get_seconds () ;
 TYPE_1__ wdt ;

__attribute__((used)) static inline time64_t set_timeout(struct watchdog_device *wdd)
{
 wdt.timeout = wdd->timeout;
 return ktime_get_seconds() + wdd->timeout;
}
