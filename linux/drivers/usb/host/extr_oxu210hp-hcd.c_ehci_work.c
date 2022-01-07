
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct oxu_hcd {int scanning; int next_uframe; scalar_t__ periodic_sched; TYPE_2__* async; scalar_t__ reclaim_ready; } ;
struct TYPE_6__ {int state; } ;
struct TYPE_4__ {int * ptr; } ;
struct TYPE_5__ {TYPE_1__ qh_next; } ;


 scalar_t__ HC_IS_RUNNING (int ) ;
 int TIMER_IO_WATCHDOG ;
 int end_unlink_async (struct oxu_hcd*) ;
 TYPE_3__* oxu_to_hcd (struct oxu_hcd*) ;
 int scan_async (struct oxu_hcd*) ;
 int scan_periodic (struct oxu_hcd*) ;
 int timer_action (struct oxu_hcd*,int ) ;
 int timer_action_done (struct oxu_hcd*,int ) ;

__attribute__((used)) static void ehci_work(struct oxu_hcd *oxu)
{
 timer_action_done(oxu, TIMER_IO_WATCHDOG);
 if (oxu->reclaim_ready)
  end_unlink_async(oxu);





 if (oxu->scanning)
  return;
 oxu->scanning = 1;
 scan_async(oxu);
 if (oxu->next_uframe != -1)
  scan_periodic(oxu);
 oxu->scanning = 0;





 if (HC_IS_RUNNING(oxu_to_hcd(oxu)->state) &&
   (oxu->async->qh_next.ptr != ((void*)0) ||
    oxu->periodic_sched != 0))
  timer_action(oxu, TIMER_IO_WATCHDOG);
}
