
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xhci_hcd {scalar_t__ xhc_state; TYPE_1__* op_regs; } ;
struct TYPE_2__ {int status; int command; } ;


 int CMD_RUN ;
 int ETIMEDOUT ;
 int STS_HALT ;
 int XHCI_MAX_HALT_USEC ;
 int readl (int *) ;
 int trace_xhci_dbg_init ;
 int writel (int ,int *) ;
 int xhci_dbg_trace (struct xhci_hcd*,int ,char*,int ) ;
 int xhci_err (struct xhci_hcd*,char*,int ) ;
 int xhci_handshake (int *,int ,int ,int ) ;

int xhci_start(struct xhci_hcd *xhci)
{
 u32 temp;
 int ret;

 temp = readl(&xhci->op_regs->command);
 temp |= (CMD_RUN);
 xhci_dbg_trace(xhci, trace_xhci_dbg_init, "// Turn on HC, cmd = 0x%x.",
   temp);
 writel(temp, &xhci->op_regs->command);





 ret = xhci_handshake(&xhci->op_regs->status,
   STS_HALT, 0, XHCI_MAX_HALT_USEC);
 if (ret == -ETIMEDOUT)
  xhci_err(xhci, "Host took too long to start, "
    "waited %u microseconds.\n",
    XHCI_MAX_HALT_USEC);
 if (!ret)

  xhci->xhc_state = 0;

 return ret;
}
