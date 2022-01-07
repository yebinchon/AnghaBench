
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dwc2_hsotg_ep {scalar_t__ target_frame; int frame_overrun; struct dwc2_hsotg* parent; } ;
struct dwc2_hsotg {scalar_t__ frame_number; } ;


 int DSTS_SOFFN_LIMIT ;

__attribute__((used)) static bool dwc2_gadget_target_frame_elapsed(struct dwc2_hsotg_ep *hs_ep)
{
 struct dwc2_hsotg *hsotg = hs_ep->parent;
 u32 target_frame = hs_ep->target_frame;
 u32 current_frame = hsotg->frame_number;
 bool frame_overrun = hs_ep->frame_overrun;

 if (!frame_overrun && current_frame >= target_frame)
  return 1;

 if (frame_overrun && current_frame >= target_frame &&
     ((current_frame - target_frame) < DSTS_SOFFN_LIMIT / 2))
  return 1;

 return 0;
}
