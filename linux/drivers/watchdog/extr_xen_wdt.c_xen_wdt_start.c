
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time64_t ;
struct watchdog_device {int dummy; } ;
struct TYPE_3__ {int id; } ;


 int BUG_ON (int) ;
 int EBUSY ;
 int HYPERVISOR_sched_op (int ,TYPE_1__*) ;
 int SCHEDOP_watchdog ;
 int set_timeout (struct watchdog_device*) ;
 TYPE_1__ wdt ;
 int wdt_expires ;

__attribute__((used)) static int xen_wdt_start(struct watchdog_device *wdd)
{
 time64_t expires;
 int err;

 expires = set_timeout(wdd);
 if (!wdt.id)
  err = HYPERVISOR_sched_op(SCHEDOP_watchdog, &wdt);
 else
  err = -EBUSY;
 if (err > 0) {
  wdt.id = err;
  wdt_expires = expires;
  err = 0;
 } else
  BUG_ON(!err);

 return err;
}
