
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct xhci_hcd {int lock; int cmd_ring_stop_completion; TYPE_1__* op_regs; } ;
struct TYPE_2__ {int cmd_ring; } ;


 int CMD_RING_ABORT ;
 int CMD_RING_RUNNING ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_timeout (int *,int ) ;
 int xhci_cleanup_command_queue (struct xhci_hcd*) ;
 int xhci_dbg (struct xhci_hcd*,char*) ;
 int xhci_err (struct xhci_hcd*,char*,int) ;
 int xhci_halt (struct xhci_hcd*) ;
 int xhci_handle_stopped_cmd_ring (struct xhci_hcd*,int ) ;
 int xhci_handshake (int *,int ,int ,int) ;
 int xhci_hc_died (struct xhci_hcd*) ;
 int xhci_next_queued_cmd (struct xhci_hcd*) ;
 int xhci_read_64 (struct xhci_hcd*,int *) ;
 int xhci_write_64 (struct xhci_hcd*,int,int *) ;

__attribute__((used)) static int xhci_abort_cmd_ring(struct xhci_hcd *xhci, unsigned long flags)
{
 u64 temp_64;
 int ret;

 xhci_dbg(xhci, "Abort command ring\n");

 reinit_completion(&xhci->cmd_ring_stop_completion);

 temp_64 = xhci_read_64(xhci, &xhci->op_regs->cmd_ring);
 xhci_write_64(xhci, temp_64 | CMD_RING_ABORT,
   &xhci->op_regs->cmd_ring);







 ret = xhci_handshake(&xhci->op_regs->cmd_ring,
   CMD_RING_RUNNING, 0, 5 * 1000 * 1000);
 if (ret < 0) {
  xhci_err(xhci, "Abort failed to stop command ring: %d\n", ret);
  xhci_halt(xhci);
  xhci_hc_died(xhci);
  return ret;
 }






 spin_unlock_irqrestore(&xhci->lock, flags);
 ret = wait_for_completion_timeout(&xhci->cmd_ring_stop_completion,
       msecs_to_jiffies(2000));
 spin_lock_irqsave(&xhci->lock, flags);
 if (!ret) {
  xhci_dbg(xhci, "No stop event for abort, ring start fail?\n");
  xhci_cleanup_command_queue(xhci);
 } else {
  xhci_handle_stopped_cmd_ring(xhci, xhci_next_queued_cmd(xhci));
 }
 return 0;
}
