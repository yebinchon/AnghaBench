
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct oxu_hcd {TYPE_2__* regs; scalar_t__ reclaim_ready; struct ehci_qh* async; struct ehci_qh* reclaim; int lock; } ;
struct TYPE_4__ {struct ehci_qh* qh; } ;
struct ehci_qh {scalar_t__ qh_state; TYPE_1__ qh_next; int hw_next; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {int command; } ;


 int BUG_ON (int ) ;
 int CMD_ASE ;
 int CMD_IAAD ;
 scalar_t__ HC_STATE_HALT ;
 scalar_t__ QH_STATE_LINKED ;
 scalar_t__ QH_STATE_UNLINK ;
 scalar_t__ QH_STATE_UNLINK_WAIT ;
 int TIMER_ASYNC_OFF ;
 int TIMER_IAA_WATCHDOG ;
 int assert_spin_locked (int *) ;
 int end_unlink_async (struct oxu_hcd*) ;
 TYPE_3__* oxu_to_hcd (struct oxu_hcd*) ;
 struct ehci_qh* qh_get (struct ehci_qh*) ;
 int readl (int *) ;
 int timer_action (struct oxu_hcd*,int ) ;
 int timer_action_done (struct oxu_hcd*,int ) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;
 int writel (int,int *) ;

__attribute__((used)) static void start_unlink_async(struct oxu_hcd *oxu, struct ehci_qh *qh)
{
 int cmd = readl(&oxu->regs->command);
 struct ehci_qh *prev;
 if (unlikely(qh == oxu->async)) {

  if (oxu_to_hcd(oxu)->state != HC_STATE_HALT
    && !oxu->reclaim) {

   writel(cmd & ~CMD_ASE, &oxu->regs->command);
   wmb();

   timer_action_done(oxu, TIMER_ASYNC_OFF);
  }
  return;
 }

 qh->qh_state = QH_STATE_UNLINK;
 oxu->reclaim = qh = qh_get(qh);

 prev = oxu->async;
 while (prev->qh_next.qh != qh)
  prev = prev->qh_next.qh;

 prev->hw_next = qh->hw_next;
 prev->qh_next = qh->qh_next;
 wmb();

 if (unlikely(oxu_to_hcd(oxu)->state == HC_STATE_HALT)) {



  end_unlink_async(oxu);
  return;
 }

 oxu->reclaim_ready = 0;
 cmd |= CMD_IAAD;
 writel(cmd, &oxu->regs->command);
 (void) readl(&oxu->regs->command);
 timer_action(oxu, TIMER_IAA_WATCHDOG);
}
