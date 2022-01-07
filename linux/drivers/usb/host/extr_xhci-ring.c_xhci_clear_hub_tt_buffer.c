
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct xhci_virt_ep {int ep_state; } ;
struct xhci_td {TYPE_6__* urb; } ;
struct xhci_hcd {int dummy; } ;
struct TYPE_12__ {TYPE_4__* dev; TYPE_3__* ep; int pipe; } ;
struct TYPE_8__ {scalar_t__ root_hub; } ;
struct TYPE_11__ {TYPE_2__ self; } ;
struct TYPE_10__ {TYPE_1__* tt; } ;
struct TYPE_9__ {TYPE_4__* hcpriv; } ;
struct TYPE_7__ {scalar_t__ hub; } ;


 int EP_CLEARING_TT ;
 scalar_t__ usb_hub_clear_tt_buffer (TYPE_6__*) ;
 int usb_pipeint (int ) ;
 TYPE_5__* xhci_to_hcd (struct xhci_hcd*) ;

__attribute__((used)) static void xhci_clear_hub_tt_buffer(struct xhci_hcd *xhci, struct xhci_td *td,
  struct xhci_virt_ep *ep)
{




 if (td->urb->dev->tt && !usb_pipeint(td->urb->pipe) &&
     (td->urb->dev->tt->hub != xhci_to_hcd(xhci)->self.root_hub) &&
     !(ep->ep_state & EP_CLEARING_TT)) {
  ep->ep_state |= EP_CLEARING_TT;
  td->urb->ep->hcpriv = td->urb->dev;
  if (usb_hub_clear_tt_buffer(td->urb))
   ep->ep_state &= ~EP_CLEARING_TT;
 }
}
