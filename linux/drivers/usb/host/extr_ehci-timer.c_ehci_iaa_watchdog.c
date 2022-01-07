
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int lost_iaa; } ;
struct ehci_hcd {scalar_t__ rh_state; TYPE_2__* regs; TYPE_1__ stats; int iaa_in_progress; } ;
struct TYPE_4__ {int status; int command; } ;


 int CMD_IAAD ;
 scalar_t__ EHCI_RH_RUNNING ;
 int INCR (int ) ;
 int STS_IAA ;
 int ehci_dbg (struct ehci_hcd*,char*,int,int) ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 int ehci_writel (struct ehci_hcd*,int,int *) ;
 int end_iaa_cycle (struct ehci_hcd*) ;

__attribute__((used)) static void ehci_iaa_watchdog(struct ehci_hcd *ehci)
{
 u32 cmd, status;







 if (!ehci->iaa_in_progress || ehci->rh_state != EHCI_RH_RUNNING)
  return;







 cmd = ehci_readl(ehci, &ehci->regs->command);
 status = ehci_readl(ehci, &ehci->regs->status);
 if ((status & STS_IAA) || !(cmd & CMD_IAAD)) {
  INCR(ehci->stats.lost_iaa);
  ehci_writel(ehci, STS_IAA, &ehci->regs->status);
 }

 ehci_dbg(ehci, "IAA watchdog: status %x cmd %x\n", status, cmd);
 end_iaa_cycle(ehci);
}
