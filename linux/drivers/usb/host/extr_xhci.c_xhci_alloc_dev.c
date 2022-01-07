
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xhci_virt_device {int out_ctx; } ;
struct xhci_slot_ctx {int dummy; } ;
struct xhci_hcd {int quirks; struct xhci_virt_device** devs; int lock; int num_active_eps; TYPE_1__* cap_regs; } ;
struct xhci_command {int slot_id; scalar_t__ status; int completion; } ;
struct TYPE_4__ {int controller; } ;
struct usb_hcd {TYPE_2__ self; } ;
struct usb_device {int slot_id; } ;
struct TYPE_3__ {int hcs_params1; } ;


 scalar_t__ COMP_SUCCESS ;
 int GFP_KERNEL ;
 int GFP_NOIO ;
 int HCS_MAX_SLOTS (int ) ;
 int TRB_ENABLE_SLOT ;
 int XHCI_EP_LIMIT_QUIRK ;
 int XHCI_RESET_ON_RESUME ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 int pm_runtime_get_noresume (int ) ;
 int readl (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_xhci_alloc_dev (struct xhci_slot_ctx*) ;
 int wait_for_completion (int ) ;
 struct xhci_command* xhci_alloc_command (struct xhci_hcd*,int,int ) ;
 int xhci_alloc_virt_device (struct xhci_hcd*,int,struct usb_device*,int ) ;
 int xhci_dbg (struct xhci_hcd*,char*) ;
 int xhci_debugfs_create_slot (struct xhci_hcd*,int) ;
 int xhci_disable_slot (struct xhci_hcd*,int) ;
 int xhci_err (struct xhci_hcd*,char*,...) ;
 int xhci_free_command (struct xhci_hcd*,struct xhci_command*) ;
 int xhci_free_virt_device (struct xhci_hcd*,int) ;
 struct xhci_slot_ctx* xhci_get_slot_ctx (struct xhci_hcd*,int ) ;
 int xhci_queue_slot_control (struct xhci_hcd*,struct xhci_command*,int ,int ) ;
 int xhci_reserve_host_control_ep_resources (struct xhci_hcd*) ;
 int xhci_ring_cmd_db (struct xhci_hcd*) ;
 int xhci_warn (struct xhci_hcd*,char*,...) ;

int xhci_alloc_dev(struct usb_hcd *hcd, struct usb_device *udev)
{
 struct xhci_hcd *xhci = hcd_to_xhci(hcd);
 struct xhci_virt_device *vdev;
 struct xhci_slot_ctx *slot_ctx;
 unsigned long flags;
 int ret, slot_id;
 struct xhci_command *command;

 command = xhci_alloc_command(xhci, 1, GFP_KERNEL);
 if (!command)
  return 0;

 spin_lock_irqsave(&xhci->lock, flags);
 ret = xhci_queue_slot_control(xhci, command, TRB_ENABLE_SLOT, 0);
 if (ret) {
  spin_unlock_irqrestore(&xhci->lock, flags);
  xhci_dbg(xhci, "FIXME: allocate a command ring segment\n");
  xhci_free_command(xhci, command);
  return 0;
 }
 xhci_ring_cmd_db(xhci);
 spin_unlock_irqrestore(&xhci->lock, flags);

 wait_for_completion(command->completion);
 slot_id = command->slot_id;

 if (!slot_id || command->status != COMP_SUCCESS) {
  xhci_err(xhci, "Error while assigning device slot ID\n");
  xhci_err(xhci, "Max number of devices this xHCI host supports is %u.\n",
    HCS_MAX_SLOTS(
     readl(&xhci->cap_regs->hcs_params1)));
  xhci_free_command(xhci, command);
  return 0;
 }

 xhci_free_command(xhci, command);

 if ((xhci->quirks & XHCI_EP_LIMIT_QUIRK)) {
  spin_lock_irqsave(&xhci->lock, flags);
  ret = xhci_reserve_host_control_ep_resources(xhci);
  if (ret) {
   spin_unlock_irqrestore(&xhci->lock, flags);
   xhci_warn(xhci, "Not enough host resources, "
     "active endpoint contexts = %u\n",
     xhci->num_active_eps);
   goto disable_slot;
  }
  spin_unlock_irqrestore(&xhci->lock, flags);
 }




 if (!xhci_alloc_virt_device(xhci, slot_id, udev, GFP_NOIO)) {
  xhci_warn(xhci, "Could not allocate xHCI USB device data structures\n");
  goto disable_slot;
 }
 vdev = xhci->devs[slot_id];
 slot_ctx = xhci_get_slot_ctx(xhci, vdev->out_ctx);
 trace_xhci_alloc_dev(slot_ctx);

 udev->slot_id = slot_id;

 xhci_debugfs_create_slot(xhci, slot_id);






 if (xhci->quirks & XHCI_RESET_ON_RESUME)
  pm_runtime_get_noresume(hcd->self.controller);




 return 1;

disable_slot:
 ret = xhci_disable_slot(xhci, udev->slot_id);
 if (ret)
  xhci_free_virt_device(xhci, udev->slot_id);

 return 0;
}
