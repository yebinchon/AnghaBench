
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fotg210_hcd {scalar_t__ rh_state; int command; TYPE_1__* regs; int * async_unlink; int * async_iaa; scalar_t__ async_unlinking; } ;
struct TYPE_2__ {int command; } ;


 int CMD_IAAD ;
 int FOTG210_HRTIMER_IAA_WATCHDOG ;
 scalar_t__ FOTG210_RH_RUNNING ;
 int end_unlink_async (struct fotg210_hcd*) ;
 int fotg210_enable_event (struct fotg210_hcd*,int ,int) ;
 int fotg210_readl (struct fotg210_hcd*,int *) ;
 int fotg210_writel (struct fotg210_hcd*,int,int *) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static void start_iaa_cycle(struct fotg210_hcd *fotg210, bool nested)
{




 if (fotg210->async_iaa || fotg210->async_unlinking)
  return;


 fotg210->async_iaa = fotg210->async_unlink;
 fotg210->async_unlink = ((void*)0);


 if (unlikely(fotg210->rh_state < FOTG210_RH_RUNNING)) {
  if (!nested)
   end_unlink_async(fotg210);


 } else if (likely(fotg210->rh_state == FOTG210_RH_RUNNING)) {

  wmb();

  fotg210_writel(fotg210, fotg210->command | CMD_IAAD,
    &fotg210->regs->command);
  fotg210_readl(fotg210, &fotg210->regs->command);
  fotg210_enable_event(fotg210, FOTG210_HRTIMER_IAA_WATCHDOG,
    1);
 }
}
