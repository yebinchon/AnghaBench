
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct fnic {int notify_timer; } ;


 scalar_t__ FNIC_NOTIFY_TIMER_PERIOD ;
 struct fnic* fnic ;
 int fnic_handle_link_event (struct fnic*) ;
 struct fnic* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int notify_timer ;
 int round_jiffies (scalar_t__) ;

__attribute__((used)) static void fnic_notify_timer(struct timer_list *t)
{
 struct fnic *fnic = from_timer(fnic, t, notify_timer);

 fnic_handle_link_event(fnic);
 mod_timer(&fnic->notify_timer,
    round_jiffies(jiffies + FNIC_NOTIFY_TIMER_PERIOD));
}
