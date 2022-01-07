
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xhci_hcd {TYPE_1__* op_regs; } ;
struct TYPE_2__ {int command; int status; } ;


 int CMD_RUN ;
 int STS_HALT ;
 int XHCI_IRQS ;
 int readl (int *) ;
 int writel (int,int *) ;

void xhci_quiesce(struct xhci_hcd *xhci)
{
 u32 halted;
 u32 cmd;
 u32 mask;

 mask = ~(XHCI_IRQS);
 halted = readl(&xhci->op_regs->status) & STS_HALT;
 if (!halted)
  mask &= ~CMD_RUN;

 cmd = readl(&xhci->op_regs->command);
 cmd &= mask;
 writel(cmd, &xhci->op_regs->command);
}
