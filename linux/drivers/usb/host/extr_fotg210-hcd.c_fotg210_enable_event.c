
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_hcd {int enabled_hrtimer_events; unsigned int next_hrtimer_event; int hrtimer; int * hr_timeouts; } ;
typedef int ktime_t ;


 int HRTIMER_MODE_ABS ;
 int NSEC_PER_MSEC ;
 int * event_delays_ns ;
 int hrtimer_start_range_ns (int *,int ,int ,int ) ;
 int ktime_add (int ,int ) ;
 int ktime_get () ;

__attribute__((used)) static void fotg210_enable_event(struct fotg210_hcd *fotg210, unsigned event,
  bool resched)
{
 ktime_t *timeout = &fotg210->hr_timeouts[event];

 if (resched)
  *timeout = ktime_add(ktime_get(), event_delays_ns[event]);
 fotg210->enabled_hrtimer_events |= (1 << event);


 if (event < fotg210->next_hrtimer_event) {
  fotg210->next_hrtimer_event = event;
  hrtimer_start_range_ns(&fotg210->hrtimer, *timeout,
    NSEC_PER_MSEC, HRTIMER_MODE_ABS);
 }
}
