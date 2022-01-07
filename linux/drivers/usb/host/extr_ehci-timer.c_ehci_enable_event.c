
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd {int enabled_hrtimer_events; unsigned int next_hrtimer_event; int hrtimer; int * hr_timeouts; } ;
typedef int ktime_t ;


 int HRTIMER_MODE_ABS ;
 int NSEC_PER_MSEC ;
 int * event_delays_ns ;
 int hrtimer_start_range_ns (int *,int ,int ,int ) ;
 int ktime_add (int ,int ) ;
 int ktime_get () ;

__attribute__((used)) static void ehci_enable_event(struct ehci_hcd *ehci, unsigned event,
  bool resched)
{
 ktime_t *timeout = &ehci->hr_timeouts[event];

 if (resched)
  *timeout = ktime_add(ktime_get(), event_delays_ns[event]);
 ehci->enabled_hrtimer_events |= (1 << event);


 if (event < ehci->next_hrtimer_event) {
  ehci->next_hrtimer_event = event;
  hrtimer_start_range_ns(&ehci->hrtimer, *timeout,
    NSEC_PER_MSEC, HRTIMER_MODE_ABS);
 }
}
