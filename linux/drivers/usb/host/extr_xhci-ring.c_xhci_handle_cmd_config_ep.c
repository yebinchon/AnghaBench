
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xhci_virt_device {TYPE_1__* eps; int out_ctx; int in_ctx; } ;
struct xhci_input_control_ctx {int drop_flags; int add_flags; } ;
struct xhci_hcd {int quirks; struct xhci_virt_device** devs; } ;
struct xhci_event_cmd {int dummy; } ;
struct xhci_ep_ctx {int dummy; } ;
struct TYPE_2__ {unsigned int ep_state; } ;


 unsigned int EP_HALTED ;
 scalar_t__ SLOT_FLAG ;
 int XHCI_RESET_EP_QUIRK ;
 scalar_t__ le32_to_cpu (int ) ;
 int ring_doorbell_for_active_rings (struct xhci_hcd*,int,unsigned int) ;
 int trace_xhci_dbg_quirks ;
 int trace_xhci_handle_cmd_config_ep (struct xhci_ep_ctx*) ;
 int xhci_dbg_trace (struct xhci_hcd*,int ,char*,unsigned int,unsigned int) ;
 struct xhci_ep_ctx* xhci_get_ep_ctx (struct xhci_hcd*,int ,unsigned int) ;
 struct xhci_input_control_ctx* xhci_get_input_control_ctx (int ) ;
 int xhci_last_valid_endpoint (scalar_t__) ;
 int xhci_warn (struct xhci_hcd*,char*) ;

__attribute__((used)) static void xhci_handle_cmd_config_ep(struct xhci_hcd *xhci, int slot_id,
  struct xhci_event_cmd *event, u32 cmd_comp_code)
{
 struct xhci_virt_device *virt_dev;
 struct xhci_input_control_ctx *ctrl_ctx;
 struct xhci_ep_ctx *ep_ctx;
 unsigned int ep_index;
 unsigned int ep_state;
 u32 add_flags, drop_flags;
 virt_dev = xhci->devs[slot_id];
 ctrl_ctx = xhci_get_input_control_ctx(virt_dev->in_ctx);
 if (!ctrl_ctx) {
  xhci_warn(xhci, "Could not get input context, bad type.\n");
  return;
 }

 add_flags = le32_to_cpu(ctrl_ctx->add_flags);
 drop_flags = le32_to_cpu(ctrl_ctx->drop_flags);

 ep_index = xhci_last_valid_endpoint(add_flags) - 1;

 ep_ctx = xhci_get_ep_ctx(xhci, virt_dev->out_ctx, ep_index);
 trace_xhci_handle_cmd_config_ep(ep_ctx);







 if (xhci->quirks & XHCI_RESET_EP_QUIRK &&
   ep_index != (unsigned int) -1 &&
   add_flags - SLOT_FLAG == drop_flags) {
  ep_state = virt_dev->eps[ep_index].ep_state;
  if (!(ep_state & EP_HALTED))
   return;
  xhci_dbg_trace(xhci, trace_xhci_dbg_quirks,
    "Completed config ep cmd - "
    "last ep index = %d, state = %d",
    ep_index, ep_state);

  virt_dev->eps[ep_index].ep_state &= ~EP_HALTED;
  ring_doorbell_for_active_rings(xhci, slot_id, ep_index);
  return;
 }
 return;
}
