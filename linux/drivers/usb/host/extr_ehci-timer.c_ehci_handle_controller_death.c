
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ehci_hcd {TYPE_1__* regs; int rh_state; int died_poll_count; } ;
struct TYPE_2__ {int intr_enable; int configured_flag; int status; } ;


 int EHCI_HRTIMER_POLL_DEAD ;
 int EHCI_RH_HALTED ;
 int STS_HALT ;
 int ehci_enable_event (struct ehci_hcd*,int ,int) ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 int ehci_warn (struct ehci_hcd*,char*) ;
 int ehci_work (struct ehci_hcd*) ;
 int ehci_writel (struct ehci_hcd*,int ,int *) ;
 int end_unlink_async (struct ehci_hcd*) ;

__attribute__((used)) static void ehci_handle_controller_death(struct ehci_hcd *ehci)
{
 if (!(ehci_readl(ehci, &ehci->regs->status) & STS_HALT)) {


  if (ehci->died_poll_count++ < 5) {

   ehci_enable_event(ehci, EHCI_HRTIMER_POLL_DEAD, 1);
   return;
  }
  ehci_warn(ehci, "Waited too long for the controller to stop, giving up\n");
 }


 ehci->rh_state = EHCI_RH_HALTED;
 ehci_writel(ehci, 0, &ehci->regs->configured_flag);
 ehci_writel(ehci, 0, &ehci->regs->intr_enable);
 ehci_work(ehci);
 end_unlink_async(ehci);


}
