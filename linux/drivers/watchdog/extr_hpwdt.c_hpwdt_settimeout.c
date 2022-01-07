
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; unsigned int pretimeout; int parent; } ;


 int dev_dbg (int ,char*,...) ;
 int hpwdt_ping (struct watchdog_device*) ;
 int hpwdt_start (struct watchdog_device*) ;
 scalar_t__ pretimeout ;
 scalar_t__ watchdog_active (struct watchdog_device*) ;

__attribute__((used)) static int hpwdt_settimeout(struct watchdog_device *wdd, unsigned int val)
{
 dev_dbg(wdd->parent, "set_timeout = %d\n", val);

 wdd->timeout = val;
 if (val <= wdd->pretimeout) {
  dev_dbg(wdd->parent, "pretimeout < timeout. Setting to zero\n");
  wdd->pretimeout = 0;
  pretimeout = 0;
  if (watchdog_active(wdd))
   hpwdt_start(wdd);
 }
 hpwdt_ping(wdd);

 return 0;
}
