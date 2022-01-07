
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg_ep {scalar_t__ target_frame; } ;


 scalar_t__ DSTS_SOFFN_LIMIT ;

__attribute__((used)) static inline void dwc2_gadget_dec_frame_num_by_one(struct dwc2_hsotg_ep *hs_ep)
{
 if (hs_ep->target_frame)
  hs_ep->target_frame -= 1;
 else
  hs_ep->target_frame = DSTS_SOFFN_LIMIT;
}
