
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_virt_ep {int ep_state; } ;
struct xhci_td {int dummy; } ;
struct xhci_hcd {TYPE_1__** devs; } ;
struct xhci_command {int dummy; } ;
typedef enum xhci_ep_reset_type { ____Placeholder_xhci_ep_reset_type } xhci_ep_reset_type ;
struct TYPE_2__ {int flags; struct xhci_virt_ep* eps; } ;


 int EP_HALTED ;
 int EP_HARD_CLEAR_TOGGLE ;
 int EP_HARD_RESET ;
 int GFP_ATOMIC ;
 int VDEV_PORT_ERROR ;
 struct xhci_command* xhci_alloc_command (struct xhci_hcd*,int,int ) ;
 int xhci_cleanup_stalled_ring (struct xhci_hcd*,unsigned int,unsigned int,struct xhci_td*) ;
 int xhci_clear_hub_tt_buffer (struct xhci_hcd*,struct xhci_td*,struct xhci_virt_ep*) ;
 int xhci_queue_reset_ep (struct xhci_hcd*,struct xhci_command*,unsigned int,unsigned int,int) ;
 int xhci_ring_cmd_db (struct xhci_hcd*) ;

__attribute__((used)) static void xhci_cleanup_halted_endpoint(struct xhci_hcd *xhci,
  unsigned int slot_id, unsigned int ep_index,
  unsigned int stream_id, struct xhci_td *td,
  enum xhci_ep_reset_type reset_type)
{
 struct xhci_virt_ep *ep = &xhci->devs[slot_id]->eps[ep_index];
 struct xhci_command *command;





 if (xhci->devs[slot_id]->flags & VDEV_PORT_ERROR)
  return;

 command = xhci_alloc_command(xhci, 0, GFP_ATOMIC);
 if (!command)
  return;

 ep->ep_state |= EP_HALTED;

 xhci_queue_reset_ep(xhci, command, slot_id, ep_index, reset_type);

 if (reset_type == EP_HARD_RESET) {
  ep->ep_state |= EP_HARD_CLEAR_TOGGLE;
  xhci_cleanup_stalled_ring(xhci, ep_index, stream_id, td);
  xhci_clear_hub_tt_buffer(xhci, td, ep);
 }
 xhci_ring_cmd_db(xhci);
}
