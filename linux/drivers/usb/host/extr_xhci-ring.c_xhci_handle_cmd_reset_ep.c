
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * field; } ;
union xhci_trb {TYPE_3__ generic; } ;
typedef int u32 ;
struct xhci_virt_device {TYPE_2__* eps; TYPE_1__* in_ctx; int out_ctx; } ;
struct xhci_hcd {int quirks; struct xhci_virt_device** devs; } ;
struct xhci_ep_ctx {int dummy; } ;
struct xhci_command {int dummy; } ;
struct TYPE_5__ {int ep_state; } ;
struct TYPE_4__ {int dma; } ;


 int EP_HALTED ;
 int GFP_ATOMIC ;
 unsigned int TRB_TO_EP_INDEX (int) ;
 int TRB_TSP ;
 int XHCI_RESET_EP_QUIRK ;
 int le32_to_cpu (int ) ;
 int ring_doorbell_for_active_rings (struct xhci_hcd*,int,unsigned int) ;
 int trace_xhci_dbg_quirks ;
 int trace_xhci_dbg_reset_ep ;
 int trace_xhci_handle_cmd_reset_ep (struct xhci_ep_ctx*) ;
 struct xhci_command* xhci_alloc_command (struct xhci_hcd*,int,int ) ;
 int xhci_dbg_trace (struct xhci_hcd*,int ,char*,...) ;
 struct xhci_ep_ctx* xhci_get_ep_ctx (struct xhci_hcd*,int ,unsigned int) ;
 int xhci_queue_configure_endpoint (struct xhci_hcd*,struct xhci_command*,int ,int,int) ;
 int xhci_ring_cmd_db (struct xhci_hcd*) ;

__attribute__((used)) static void xhci_handle_cmd_reset_ep(struct xhci_hcd *xhci, int slot_id,
  union xhci_trb *trb, u32 cmd_comp_code)
{
 struct xhci_virt_device *vdev;
 struct xhci_ep_ctx *ep_ctx;
 unsigned int ep_index;

 ep_index = TRB_TO_EP_INDEX(le32_to_cpu(trb->generic.field[3]));
 vdev = xhci->devs[slot_id];
 ep_ctx = xhci_get_ep_ctx(xhci, vdev->out_ctx, ep_index);
 trace_xhci_handle_cmd_reset_ep(ep_ctx);




 xhci_dbg_trace(xhci, trace_xhci_dbg_reset_ep,
  "Ignoring reset ep completion code of %u", cmd_comp_code);





 if (xhci->quirks & XHCI_RESET_EP_QUIRK) {
  struct xhci_command *command;

  command = xhci_alloc_command(xhci, 0, GFP_ATOMIC);
  if (!command)
   return;

  xhci_dbg_trace(xhci, trace_xhci_dbg_quirks,
    "Queueing configure endpoint command");
  xhci_queue_configure_endpoint(xhci, command,
    xhci->devs[slot_id]->in_ctx->dma, slot_id,
    0);
  xhci_ring_cmd_db(xhci);
 } else {

  xhci->devs[slot_id]->eps[ep_index].ep_state &= ~EP_HALTED;
 }


 if ((le32_to_cpu(trb->generic.field[3])) & TRB_TSP)
  ring_doorbell_for_active_rings(xhci, slot_id, ep_index);
}
