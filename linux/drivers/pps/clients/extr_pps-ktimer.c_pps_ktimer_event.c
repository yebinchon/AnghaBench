
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct pps_event_time {int dummy; } ;


 scalar_t__ HZ ;
 int PPS_CAPTUREASSERT ;
 scalar_t__ jiffies ;
 int ktimer ;
 int mod_timer (int *,scalar_t__) ;
 int pps ;
 int pps_event (int ,struct pps_event_time*,int ,int *) ;
 int pps_get_ts (struct pps_event_time*) ;

__attribute__((used)) static void pps_ktimer_event(struct timer_list *unused)
{
 struct pps_event_time ts;


 pps_get_ts(&ts);

 pps_event(pps, &ts, PPS_CAPTUREASSERT, ((void*)0));

 mod_timer(&ktimer, jiffies + HZ);
}
