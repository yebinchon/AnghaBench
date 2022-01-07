
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dwc3_trb {int ctrl; } ;
struct dwc3_ep {scalar_t__ trb_enqueue; scalar_t__ trb_dequeue; } ;


 int DWC3_TRB_CTRL_HWO ;
 int DWC3_TRB_NUM ;
 struct dwc3_trb* dwc3_ep_prev_trb (struct dwc3_ep*,scalar_t__) ;

__attribute__((used)) static u32 dwc3_calc_trbs_left(struct dwc3_ep *dep)
{
 struct dwc3_trb *tmp;
 u8 trbs_left;
 if (dep->trb_enqueue == dep->trb_dequeue) {
  tmp = dwc3_ep_prev_trb(dep, dep->trb_enqueue);
  if (tmp->ctrl & DWC3_TRB_CTRL_HWO)
   return 0;

  return DWC3_TRB_NUM - 1;
 }

 trbs_left = dep->trb_dequeue - dep->trb_enqueue;
 trbs_left &= (DWC3_TRB_NUM - 1);

 if (dep->trb_dequeue < dep->trb_enqueue)
  trbs_left--;

 return trbs_left;
}
