
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ehci_hcd {scalar_t__ rh_state; int command; TYPE_1__* regs; int lock; } ;
struct TYPE_2__ {int status; int command; } ;


 int CMD_ASE ;
 int CMD_PSE ;
 scalar_t__ EHCI_RH_RUNNING ;
 int STS_ASS ;
 int STS_PSS ;
 int ehci_handshake (struct ehci_hcd*,int *,int,int,int) ;
 int ehci_writel (struct ehci_hcd*,int,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void ehci_quiesce (struct ehci_hcd *ehci)
{
 u32 temp;

 if (ehci->rh_state != EHCI_RH_RUNNING)
  return;


 temp = (ehci->command << 10) & (STS_ASS | STS_PSS);
 ehci_handshake(ehci, &ehci->regs->status, STS_ASS | STS_PSS, temp,
   16 * 125);


 spin_lock_irq(&ehci->lock);
 ehci->command &= ~(CMD_ASE | CMD_PSE);
 ehci_writel(ehci, ehci->command, &ehci->regs->command);
 spin_unlock_irq(&ehci->lock);


 ehci_handshake(ehci, &ehci->regs->status, STS_ASS | STS_PSS, 0,
   16 * 125);
}
