
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg_ep {int frame_overrun; int target_frame; scalar_t__ interval; } ;


 int DSTS_SOFFN_LIMIT ;

__attribute__((used)) static inline void dwc2_gadget_incr_frame_num(struct dwc2_hsotg_ep *hs_ep)
{
 hs_ep->target_frame += hs_ep->interval;
 if (hs_ep->target_frame > DSTS_SOFFN_LIMIT) {
  hs_ep->frame_overrun = 1;
  hs_ep->target_frame &= DSTS_SOFFN_LIMIT;
 } else {
  hs_ep->frame_overrun = 0;
 }
}
