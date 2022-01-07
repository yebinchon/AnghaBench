
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xhci_hcd {int cmd_ring_reserved_trbs; int xhc_state; TYPE_1__* cmd_ring; int cmd_list; struct xhci_command* current_cmd; } ;
struct xhci_command {int cmd_list; int command_trb; } ;
struct TYPE_3__ {int cycle_state; int enqueue; } ;


 int EP_STATE_RUNNING ;
 int ESHUTDOWN ;
 int GFP_ATOMIC ;
 int XHCI_CMD_DEFAULT_TIMEOUT ;
 int XHCI_STATE_DYING ;
 int XHCI_STATE_HALTED ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int prepare_ring (struct xhci_hcd*,TYPE_1__*,int ,int,int ) ;
 int queue_trb (struct xhci_hcd*,TYPE_1__*,int,int,int,int,int) ;
 int xhci_dbg (struct xhci_hcd*,char*) ;
 int xhci_err (struct xhci_hcd*,char*) ;
 int xhci_mod_cmd_timer (struct xhci_hcd*,int ) ;

__attribute__((used)) static int queue_command(struct xhci_hcd *xhci, struct xhci_command *cmd,
    u32 field1, u32 field2,
    u32 field3, u32 field4, bool command_must_succeed)
{
 int reserved_trbs = xhci->cmd_ring_reserved_trbs;
 int ret;

 if ((xhci->xhc_state & XHCI_STATE_DYING) ||
  (xhci->xhc_state & XHCI_STATE_HALTED)) {
  xhci_dbg(xhci, "xHCI dying or halted, can't queue_command\n");
  return -ESHUTDOWN;
 }

 if (!command_must_succeed)
  reserved_trbs++;

 ret = prepare_ring(xhci, xhci->cmd_ring, EP_STATE_RUNNING,
   reserved_trbs, GFP_ATOMIC);
 if (ret < 0) {
  xhci_err(xhci, "ERR: No room for command on command ring\n");
  if (command_must_succeed)
   xhci_err(xhci, "ERR: Reserved TRB counting for "
     "unfailable commands failed.\n");
  return ret;
 }

 cmd->command_trb = xhci->cmd_ring->enqueue;


 if (list_empty(&xhci->cmd_list)) {
  xhci->current_cmd = cmd;
  xhci_mod_cmd_timer(xhci, XHCI_CMD_DEFAULT_TIMEOUT);
 }

 list_add_tail(&cmd->cmd_list, &xhci->cmd_list);

 queue_trb(xhci, xhci->cmd_ring, 0, field1, field2, field3,
   field4 | xhci->cmd_ring->cycle_state);
 return 0;
}
