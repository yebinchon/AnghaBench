
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expires; } ;
struct AdapterCtlBlk {int last_reset; TYPE_1__ waiting_timer; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 int jiffies ;
 scalar_t__ time_before (int,int) ;
 scalar_t__ timer_pending (TYPE_1__*) ;

__attribute__((used)) static void waiting_set_timer(struct AdapterCtlBlk *acb, unsigned long to)
{
 if (timer_pending(&acb->waiting_timer))
  return;
 if (time_before(jiffies + to, acb->last_reset - HZ / 2))
  acb->waiting_timer.expires =
      acb->last_reset - HZ / 2 + 1;
 else
  acb->waiting_timer.expires = jiffies + to + 1;
 add_timer(&acb->waiting_timer);
}
