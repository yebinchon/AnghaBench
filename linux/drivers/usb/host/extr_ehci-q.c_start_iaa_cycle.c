
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ehci_hcd {scalar_t__ rh_state; int iaa_in_progress; int command; TYPE_1__* regs; } ;
struct TYPE_2__ {int command; } ;


 int CMD_IAAD ;
 int EHCI_HRTIMER_IAA_WATCHDOG ;
 scalar_t__ EHCI_RH_RUNNING ;
 int ehci_enable_event (struct ehci_hcd*,int ,int) ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 int ehci_writel (struct ehci_hcd*,int,int *) ;
 int end_unlink_async (struct ehci_hcd*) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static void start_iaa_cycle(struct ehci_hcd *ehci)
{

 if (unlikely(ehci->rh_state < EHCI_RH_RUNNING)) {
  end_unlink_async(ehci);


 } else if (ehci->rh_state == EHCI_RH_RUNNING &&
   !ehci->iaa_in_progress) {


  wmb();

  ehci_writel(ehci, ehci->command | CMD_IAAD,
    &ehci->regs->command);
  ehci_readl(ehci, &ehci->regs->command);
  ehci->iaa_in_progress = 1;
  ehci_enable_event(ehci, EHCI_HRTIMER_IAA_WATCHDOG, 1);
 }
}
