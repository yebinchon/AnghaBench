
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dwc3_trb {int dummy; } ;
struct dwc3_ep {struct dwc3_trb* trb_pool; } ;


 int DWC3_TRB_NUM ;

__attribute__((used)) static struct dwc3_trb *dwc3_ep_prev_trb(struct dwc3_ep *dep, u8 index)
{
 u8 tmp = index;

 if (!tmp)
  tmp = DWC3_TRB_NUM - 1;

 return &dep->trb_pool[tmp - 1];
}
