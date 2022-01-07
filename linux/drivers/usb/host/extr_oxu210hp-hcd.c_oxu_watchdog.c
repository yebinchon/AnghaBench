
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct timer_list {int dummy; } ;
struct oxu_hcd {int reclaim_ready; int lock; int async; int actions; TYPE_1__* regs; scalar_t__ reclaim; } ;
struct TYPE_2__ {int status; } ;


 int STS_IAA ;
 int TIMER_ASYNC_OFF ;
 int ehci_work (struct oxu_hcd*) ;
 struct oxu_hcd* from_timer (int ,struct timer_list*,int ) ;
 struct oxu_hcd* oxu ;
 int oxu_vdbg (struct oxu_hcd*,char*) ;
 int readl (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_unlink_async (struct oxu_hcd*,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int watchdog ;
 int writel (int,int *) ;

__attribute__((used)) static void oxu_watchdog(struct timer_list *t)
{
 struct oxu_hcd *oxu = from_timer(oxu, t, watchdog);
 unsigned long flags;

 spin_lock_irqsave(&oxu->lock, flags);


 if (oxu->reclaim) {
  u32 status = readl(&oxu->regs->status);
  if (status & STS_IAA) {
   oxu_vdbg(oxu, "lost IAA\n");
   writel(STS_IAA, &oxu->regs->status);
   oxu->reclaim_ready = 1;
  }
 }


 if (test_bit(TIMER_ASYNC_OFF, &oxu->actions))
  start_unlink_async(oxu, oxu->async);


 ehci_work(oxu);

 spin_unlock_irqrestore(&oxu->lock, flags);
}
