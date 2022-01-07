
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct watchdog_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ id; scalar_t__ timeout; } ;


 int HYPERVISOR_sched_op (int ,TYPE_1__*) ;
 int SCHEDOP_watchdog ;
 TYPE_1__ wdt ;

__attribute__((used)) static int xen_wdt_stop(struct watchdog_device *wdd)
{
 int err = 0;

 wdt.timeout = 0;
 if (wdt.id)
  err = HYPERVISOR_sched_op(SCHEDOP_watchdog, &wdt);
 if (!err)
  wdt.id = 0;

 return err;
}
