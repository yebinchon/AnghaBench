
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg_ep {int dir_in; scalar_t__ target_frame; int interval; int index; int isochronous; struct dwc2_hsotg* parent; } ;
struct dwc2_hsotg {scalar_t__ frame_number; } ;


 int DOEPCTL (int ) ;
 int DOEPMSK ;
 int DOEPMSK_OUTTKNEPDISMSK ;
 int DXEPCTL_SETEVENFR ;
 int DXEPCTL_SETODDFR ;
 scalar_t__ TARGET_FRAME_INITIAL ;
 int dwc2_gadget_incr_frame_num (struct dwc2_hsotg_ep*) ;
 int dwc2_gadget_start_isoc_ddma (struct dwc2_hsotg_ep*) ;
 int dwc2_gadget_start_next_request (struct dwc2_hsotg_ep*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;
 scalar_t__ using_desc_dma (struct dwc2_hsotg*) ;

__attribute__((used)) static void dwc2_gadget_handle_out_token_ep_disabled(struct dwc2_hsotg_ep *ep)
{
 struct dwc2_hsotg *hsotg = ep->parent;
 int dir_in = ep->dir_in;
 u32 doepmsk;

 if (dir_in || !ep->isochronous)
  return;

 if (using_desc_dma(hsotg)) {
  if (ep->target_frame == TARGET_FRAME_INITIAL) {

   ep->target_frame = hsotg->frame_number;
   dwc2_gadget_start_isoc_ddma(ep);
  }
  return;
 }

 if (ep->interval > 1 &&
     ep->target_frame == TARGET_FRAME_INITIAL) {
  u32 ctrl;

  ep->target_frame = hsotg->frame_number;
  dwc2_gadget_incr_frame_num(ep);

  ctrl = dwc2_readl(hsotg, DOEPCTL(ep->index));
  if (ep->target_frame & 0x1)
   ctrl |= DXEPCTL_SETODDFR;
  else
   ctrl |= DXEPCTL_SETEVENFR;

  dwc2_writel(hsotg, ctrl, DOEPCTL(ep->index));
 }

 dwc2_gadget_start_next_request(ep);
 doepmsk = dwc2_readl(hsotg, DOEPMSK);
 doepmsk &= ~DOEPMSK_OUTTKNEPDISMSK;
 dwc2_writel(hsotg, doepmsk, DOEPMSK);
}
