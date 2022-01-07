
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_hcd {scalar_t__ rh_state; int enabled_hrtimer_events; scalar_t__ isoc_count; scalar_t__ async_count; scalar_t__ intr_count; scalar_t__ need_io_watchdog; } ;


 int BIT (int ) ;
 int FOTG210_HRTIMER_IO_WATCHDOG ;
 scalar_t__ FOTG210_RH_RUNNING ;
 int fotg210_enable_event (struct fotg210_hcd*,int ,int) ;

__attribute__((used)) static void turn_on_io_watchdog(struct fotg210_hcd *fotg210)
{

 if (fotg210->rh_state != FOTG210_RH_RUNNING ||
   (fotg210->enabled_hrtimer_events &
   BIT(FOTG210_HRTIMER_IO_WATCHDOG)))
  return;





 if (fotg210->isoc_count > 0 || (fotg210->need_io_watchdog &&
   fotg210->async_count + fotg210->intr_count > 0))
  fotg210_enable_event(fotg210, FOTG210_HRTIMER_IO_WATCHDOG,
    1);
}
