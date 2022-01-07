
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct subchannel {int lock; int schid; } ;
struct eadm_private {struct subchannel* sch; } ;


 int EADM_LOG (int,char*) ;
 int EADM_LOG_HEX (int,int *,int) ;
 scalar_t__ eadm_subchannel_clear (struct subchannel*) ;
 struct eadm_private* from_timer (int ,struct timer_list*,int ) ;
 struct eadm_private* private ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int timer ;

__attribute__((used)) static void eadm_subchannel_timeout(struct timer_list *t)
{
 struct eadm_private *private = from_timer(private, t, timer);
 struct subchannel *sch = private->sch;

 spin_lock_irq(sch->lock);
 EADM_LOG(1, "timeout");
 EADM_LOG_HEX(1, &sch->schid, sizeof(sch->schid));
 if (eadm_subchannel_clear(sch))
  EADM_LOG(0, "clear failed");
 spin_unlock_irq(sch->lock);
}
