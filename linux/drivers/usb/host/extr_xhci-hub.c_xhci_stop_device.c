
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xhci_virt_device {int out_ctx; TYPE_2__* eps; } ;
struct xhci_hcd {int lock; struct xhci_virt_device** devs; } ;
struct xhci_ep_ctx {int dummy; } ;
struct xhci_command {scalar_t__ status; int completion; } ;
struct TYPE_4__ {TYPE_1__* ring; } ;
struct TYPE_3__ {scalar_t__ dequeue; } ;


 scalar_t__ COMP_COMMAND_ABORTED ;
 scalar_t__ COMP_COMMAND_RING_STOPPED ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ EP_STATE_RUNNING ;
 int ETIME ;
 scalar_t__ GET_EP_CTX_STATE (struct xhci_ep_ctx*) ;
 int GFP_NOIO ;
 int GFP_NOWAIT ;
 int LAST_EP_INDEX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_xhci_stop_device (struct xhci_virt_device*) ;
 int wait_for_completion (int ) ;
 struct xhci_command* xhci_alloc_command (struct xhci_hcd*,int,int ) ;
 int xhci_free_command (struct xhci_hcd*,struct xhci_command*) ;
 struct xhci_ep_ctx* xhci_get_ep_ctx (struct xhci_hcd*,int ,int) ;
 int xhci_queue_stop_endpoint (struct xhci_hcd*,struct xhci_command*,int,int,int) ;
 int xhci_ring_cmd_db (struct xhci_hcd*) ;
 int xhci_warn (struct xhci_hcd*,char*) ;

__attribute__((used)) static int xhci_stop_device(struct xhci_hcd *xhci, int slot_id, int suspend)
{
 struct xhci_virt_device *virt_dev;
 struct xhci_command *cmd;
 unsigned long flags;
 int ret;
 int i;

 ret = 0;
 virt_dev = xhci->devs[slot_id];
 if (!virt_dev)
  return -ENODEV;

 trace_xhci_stop_device(virt_dev);

 cmd = xhci_alloc_command(xhci, 1, GFP_NOIO);
 if (!cmd)
  return -ENOMEM;

 spin_lock_irqsave(&xhci->lock, flags);
 for (i = LAST_EP_INDEX; i > 0; i--) {
  if (virt_dev->eps[i].ring && virt_dev->eps[i].ring->dequeue) {
   struct xhci_ep_ctx *ep_ctx;
   struct xhci_command *command;

   ep_ctx = xhci_get_ep_ctx(xhci, virt_dev->out_ctx, i);


   if (GET_EP_CTX_STATE(ep_ctx) != EP_STATE_RUNNING)
    continue;

   command = xhci_alloc_command(xhci, 0, GFP_NOWAIT);
   if (!command) {
    spin_unlock_irqrestore(&xhci->lock, flags);
    ret = -ENOMEM;
    goto cmd_cleanup;
   }

   ret = xhci_queue_stop_endpoint(xhci, command, slot_id,
             i, suspend);
   if (ret) {
    spin_unlock_irqrestore(&xhci->lock, flags);
    xhci_free_command(xhci, command);
    goto cmd_cleanup;
   }
  }
 }
 ret = xhci_queue_stop_endpoint(xhci, cmd, slot_id, 0, suspend);
 if (ret) {
  spin_unlock_irqrestore(&xhci->lock, flags);
  goto cmd_cleanup;
 }

 xhci_ring_cmd_db(xhci);
 spin_unlock_irqrestore(&xhci->lock, flags);


 wait_for_completion(cmd->completion);

 if (cmd->status == COMP_COMMAND_ABORTED ||
     cmd->status == COMP_COMMAND_RING_STOPPED) {
  xhci_warn(xhci, "Timeout while waiting for stop endpoint command\n");
  ret = -ETIME;
 }

cmd_cleanup:
 xhci_free_command(xhci, cmd);
 return ret;
}
