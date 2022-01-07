
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ehci_hcd {scalar_t__ rh_state; int command; scalar_t__ async_count; scalar_t__ ASS_poll_count; TYPE_1__* regs; } ;
struct TYPE_2__ {int status; } ;


 int CMD_ASE ;
 int EHCI_HRTIMER_DISABLE_ASYNC ;
 int EHCI_HRTIMER_POLL_ASS ;
 scalar_t__ EHCI_RH_RUNNING ;
 unsigned int STS_ASS ;
 int ehci_dbg (struct ehci_hcd*,char*,unsigned int,unsigned int) ;
 int ehci_enable_event (struct ehci_hcd*,int ,int) ;
 unsigned int ehci_readl (struct ehci_hcd*,int *) ;
 int ehci_set_command_bit (struct ehci_hcd*,int) ;

__attribute__((used)) static void ehci_poll_ASS(struct ehci_hcd *ehci)
{
 unsigned actual, want;


 if (ehci->rh_state != EHCI_RH_RUNNING)
  return;

 want = (ehci->command & CMD_ASE) ? STS_ASS : 0;
 actual = ehci_readl(ehci, &ehci->regs->status) & STS_ASS;

 if (want != actual) {


  if (ehci->ASS_poll_count++ < 2) {
   ehci_enable_event(ehci, EHCI_HRTIMER_POLL_ASS, 1);
   return;
  }
  ehci_dbg(ehci, "Waited too long for the async schedule status (%x/%x), giving up\n",
    want, actual);
 }
 ehci->ASS_poll_count = 0;


 if (want == 0) {
  if (ehci->async_count > 0)
   ehci_set_command_bit(ehci, CMD_ASE);

 } else {
  if (ehci->async_count == 0) {


   ehci_enable_event(ehci, EHCI_HRTIMER_DISABLE_ASYNC,
     1);
  }
 }
}
