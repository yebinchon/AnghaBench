
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ehci_hcd {TYPE_1__* regs; int command; } ;
struct TYPE_2__ {int command; } ;


 int ehci_readl (struct ehci_hcd*,int *) ;
 int ehci_writel (struct ehci_hcd*,int ,int *) ;

__attribute__((used)) static void ehci_set_command_bit(struct ehci_hcd *ehci, u32 bit)
{
 ehci->command |= bit;
 ehci_writel(ehci, ehci->command, &ehci->regs->command);


 ehci_readl(ehci, &ehci->regs->command);
}
