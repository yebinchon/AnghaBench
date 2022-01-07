
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg_ep {scalar_t__ compl_desc; scalar_t__ next_desc; int target_frame; int dir_in; struct dwc2_hsotg* parent; } ;
struct dwc2_hsotg {int dummy; } ;


 int TARGET_FRAME_INITIAL ;
 int dwc2_flush_rx_fifo (struct dwc2_hsotg*) ;
 int dwc2_hsotg_complete_request (struct dwc2_hsotg*,struct dwc2_hsotg_ep*,int ,int ) ;
 int get_ep_head (struct dwc2_hsotg_ep*) ;

__attribute__((used)) static void dwc2_gadget_handle_isoc_bna(struct dwc2_hsotg_ep *hs_ep)
{
 struct dwc2_hsotg *hsotg = hs_ep->parent;

 if (!hs_ep->dir_in)
  dwc2_flush_rx_fifo(hsotg);
 dwc2_hsotg_complete_request(hsotg, hs_ep, get_ep_head(hs_ep), 0);

 hs_ep->target_frame = TARGET_FRAME_INITIAL;
 hs_ep->next_desc = 0;
 hs_ep->compl_desc = 0;
}
