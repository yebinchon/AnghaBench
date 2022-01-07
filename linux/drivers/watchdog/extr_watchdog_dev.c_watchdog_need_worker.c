
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int max_hw_heartbeat_ms; int timeout; } ;


 scalar_t__ watchdog_active (struct watchdog_device*) ;
 scalar_t__ watchdog_hw_running (struct watchdog_device*) ;

__attribute__((used)) static inline bool watchdog_need_worker(struct watchdog_device *wdd)
{

 unsigned int hm = wdd->max_hw_heartbeat_ms;
 unsigned int t = wdd->timeout * 1000;
 return (hm && watchdog_active(wdd) && t > hm) ||
  (t && !watchdog_active(wdd) && watchdog_hw_running(wdd));
}
