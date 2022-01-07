
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int dummy; } ;
struct xhci_ep_ctx {int dummy; } ;


 unsigned int COMP_BABBLE_DETECTED_ERROR ;
 unsigned int COMP_SPLIT_TRANSACTION_ERROR ;
 unsigned int COMP_USB_TRANSACTION_ERROR ;
 scalar_t__ EP_STATE_HALTED ;
 scalar_t__ GET_EP_CTX_STATE (struct xhci_ep_ctx*) ;

__attribute__((used)) static int xhci_requires_manual_halt_cleanup(struct xhci_hcd *xhci,
  struct xhci_ep_ctx *ep_ctx,
  unsigned int trb_comp_code)
{

 if (trb_comp_code == COMP_USB_TRANSACTION_ERROR ||
   trb_comp_code == COMP_BABBLE_DETECTED_ERROR ||
   trb_comp_code == COMP_SPLIT_TRANSACTION_ERROR)






  if (GET_EP_CTX_STATE(ep_ctx) == EP_STATE_HALTED)
   return 1;

 return 0;
}
