
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_hcd {int cmd_ring_state; TYPE_1__* dba; } ;
struct TYPE_2__ {int * doorbell; } ;


 int CMD_RING_STATE_RUNNING ;
 int DB_VALUE_HOST ;
 int readl (int *) ;
 int writel (int ,int *) ;
 int xhci_dbg (struct xhci_hcd*,char*) ;

void xhci_ring_cmd_db(struct xhci_hcd *xhci)
{
 if (!(xhci->cmd_ring_state & CMD_RING_STATE_RUNNING))
  return;

 xhci_dbg(xhci, "// Ding dong!\n");
 writel(DB_VALUE_HOST, &xhci->dba->doorbell[0]);

 readl(&xhci->dba->doorbell[0]);
}
