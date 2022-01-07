
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * field; } ;
union xhci_trb {TYPE_1__ generic; } ;
typedef int u32 ;
struct xhci_virt_ep {int dummy; } ;
struct xhci_virt_device {int out_ctx; } ;
struct xhci_transfer_event {int transfer_len; int flags; } ;
struct xhci_td {int urb_length_set; TYPE_2__* urb; } ;
struct xhci_hcd {struct xhci_virt_device** devs; } ;
struct xhci_ep_ctx {int dummy; } ;
struct TYPE_4__ {int transfer_buffer_length; int actual_length; } ;
 int ESHUTDOWN ;
 int EVENT_TRB_LEN (int ) ;
 int GET_COMP_CODE (int ) ;

 int TRB_FIELD_TO_TYPE (int ) ;



 int TRB_TO_EP_ID (int ) ;
 unsigned int TRB_TO_SLOT_ID (int ) ;
 int finish_td (struct xhci_hcd*,struct xhci_td*,struct xhci_transfer_event*,struct xhci_virt_ep*,int*) ;
 int le32_to_cpu (int ) ;
 int xhci_dbg (struct xhci_hcd*,char*,...) ;
 struct xhci_ep_ctx* xhci_get_ep_ctx (struct xhci_hcd*,int ,int) ;
 int xhci_requires_manual_halt_cleanup (struct xhci_hcd*,struct xhci_ep_ctx*,int) ;
 int xhci_warn (struct xhci_hcd*,char*,...) ;

__attribute__((used)) static int process_ctrl_td(struct xhci_hcd *xhci, struct xhci_td *td,
 union xhci_trb *ep_trb, struct xhci_transfer_event *event,
 struct xhci_virt_ep *ep, int *status)
{
 struct xhci_virt_device *xdev;
 unsigned int slot_id;
 int ep_index;
 struct xhci_ep_ctx *ep_ctx;
 u32 trb_comp_code;
 u32 remaining, requested;
 u32 trb_type;

 trb_type = TRB_FIELD_TO_TYPE(le32_to_cpu(ep_trb->generic.field[3]));
 slot_id = TRB_TO_SLOT_ID(le32_to_cpu(event->flags));
 xdev = xhci->devs[slot_id];
 ep_index = TRB_TO_EP_ID(le32_to_cpu(event->flags)) - 1;
 ep_ctx = xhci_get_ep_ctx(xhci, xdev->out_ctx, ep_index);
 trb_comp_code = GET_COMP_CODE(le32_to_cpu(event->transfer_len));
 requested = td->urb->transfer_buffer_length;
 remaining = EVENT_TRB_LEN(le32_to_cpu(event->transfer_len));

 switch (trb_comp_code) {
 case 132:
  if (trb_type != 128) {
   xhci_warn(xhci, "WARN: Success on ctrl %s TRB without IOC set?\n",
      (trb_type == 131) ? "data" : "setup");
   *status = -ESHUTDOWN;
   break;
  }
  *status = 0;
  break;
 case 137:
  *status = 0;
  break;
 case 133:
  if (trb_type == 131 || trb_type == 130)
   td->urb->actual_length = remaining;
  else
   xhci_warn(xhci, "WARN: Stopped Short Packet on ctrl setup or status TRB\n");
  goto finish_td;
 case 135:
  switch (trb_type) {
  case 129:
   td->urb->actual_length = 0;
   goto finish_td;
  case 131:
  case 130:
   td->urb->actual_length = requested - remaining;
   goto finish_td;
  case 128:
   td->urb->actual_length = requested;
   goto finish_td;
  default:
   xhci_warn(xhci, "WARN: unexpected TRB Type %d\n",
      trb_type);
   goto finish_td;
  }
 case 134:
  goto finish_td;
 default:
  if (!xhci_requires_manual_halt_cleanup(xhci,
             ep_ctx, trb_comp_code))
   break;
  xhci_dbg(xhci, "TRB error %u, halted endpoint index = %u\n",
    trb_comp_code, ep_index);

 case 136:

  if (trb_type == 131 || trb_type == 130)
   td->urb->actual_length = requested - remaining;
  else if (!td->urb_length_set)
   td->urb->actual_length = 0;
  goto finish_td;
 }


 if (trb_type == 129)
  goto finish_td;





 if (trb_type == 131 ||
  trb_type == 130) {
  td->urb_length_set = 1;
  td->urb->actual_length = requested - remaining;
  xhci_dbg(xhci, "Waiting for status stage event\n");
  return 0;
 }


 if (!td->urb_length_set)
  td->urb->actual_length = requested;

finish_td:
 return finish_td(xhci, td, event, ep, status);
}
