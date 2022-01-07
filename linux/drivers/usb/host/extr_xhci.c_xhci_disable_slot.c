
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xhci_hcd {int xhc_state; int lock; TYPE_1__* op_regs; } ;
struct xhci_command {int dummy; } ;
struct TYPE_2__ {int status; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TRB_DISABLE_SLOT ;
 int XHCI_STATE_DYING ;
 int XHCI_STATE_HALTED ;
 int kfree (struct xhci_command*) ;
 int readl (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct xhci_command* xhci_alloc_command (struct xhci_hcd*,int,int ) ;
 int xhci_debugfs_remove_slot (struct xhci_hcd*,int) ;
 int xhci_queue_slot_control (struct xhci_hcd*,struct xhci_command*,int ,int) ;
 int xhci_ring_cmd_db (struct xhci_hcd*) ;

int xhci_disable_slot(struct xhci_hcd *xhci, u32 slot_id)
{
 struct xhci_command *command;
 unsigned long flags;
 u32 state;
 int ret = 0;

 command = xhci_alloc_command(xhci, 0, GFP_KERNEL);
 if (!command)
  return -ENOMEM;

 xhci_debugfs_remove_slot(xhci, slot_id);

 spin_lock_irqsave(&xhci->lock, flags);

 state = readl(&xhci->op_regs->status);
 if (state == 0xffffffff || (xhci->xhc_state & XHCI_STATE_DYING) ||
   (xhci->xhc_state & XHCI_STATE_HALTED)) {
  spin_unlock_irqrestore(&xhci->lock, flags);
  kfree(command);
  return -ENODEV;
 }

 ret = xhci_queue_slot_control(xhci, command, TRB_DISABLE_SLOT,
    slot_id);
 if (ret) {
  spin_unlock_irqrestore(&xhci->lock, flags);
  kfree(command);
  return ret;
 }
 xhci_ring_cmd_db(xhci);
 spin_unlock_irqrestore(&xhci->lock, flags);
 return ret;
}
