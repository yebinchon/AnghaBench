
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ohci_hcd {int fminterval; TYPE_1__* regs; } ;
struct TYPE_2__ {int periodicstart; int fminterval; } ;


 int FIT ;
 int ohci_readl (struct ohci_hcd*,int *) ;
 int ohci_writel (struct ohci_hcd*,int,int *) ;

__attribute__((used)) static inline void periodic_reinit (struct ohci_hcd *ohci)
{
 u32 fi = ohci->fminterval & 0x03fff;
 u32 fit = ohci_readl(ohci, &ohci->regs->fminterval) & FIT;

 ohci_writel (ohci, (fit ^ FIT) | ohci->fminterval,
      &ohci->regs->fminterval);
 ohci_writel (ohci, ((9 * fi) / 10) & 0x3fff,
      &ohci->regs->periodicstart);
}
