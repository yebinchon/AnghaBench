
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ehci_hcd {int command; TYPE_1__* regs; int lock; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int status; int command; int intr_enable; } ;


 int CMD_IAAD ;
 int CMD_RUN ;
 int STS_HALT ;
 int ehci_handshake (struct ehci_hcd*,int *,int ,int ,int) ;
 scalar_t__ ehci_is_TDI (struct ehci_hcd*) ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 TYPE_2__* ehci_to_hcd (struct ehci_hcd*) ;
 int ehci_writel (struct ehci_hcd*,int,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int synchronize_irq (int ) ;
 int tdi_in_host_mode (struct ehci_hcd*) ;

__attribute__((used)) static int ehci_halt (struct ehci_hcd *ehci)
{
 u32 temp;

 spin_lock_irq(&ehci->lock);


 ehci_writel(ehci, 0, &ehci->regs->intr_enable);

 if (ehci_is_TDI(ehci) && !tdi_in_host_mode(ehci)) {
  spin_unlock_irq(&ehci->lock);
  return 0;
 }





 ehci->command &= ~CMD_RUN;
 temp = ehci_readl(ehci, &ehci->regs->command);
 temp &= ~(CMD_RUN | CMD_IAAD);
 ehci_writel(ehci, temp, &ehci->regs->command);

 spin_unlock_irq(&ehci->lock);
 synchronize_irq(ehci_to_hcd(ehci)->irq);

 return ehci_handshake(ehci, &ehci->regs->status,
     STS_HALT, STS_HALT, 16 * 125);
}
