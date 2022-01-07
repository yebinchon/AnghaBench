
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {int ep_list; } ;
struct dwc3_ep {TYPE_1__ endpoint; } ;
struct dwc3 {struct dwc3_ep** eps; } ;


 size_t DWC3_ENDPOINTS_NUM ;
 int dwc3_free_trb_pool (struct dwc3_ep*) ;
 int kfree (struct dwc3_ep*) ;
 int list_del (int *) ;

__attribute__((used)) static void dwc3_gadget_free_endpoints(struct dwc3 *dwc)
{
 struct dwc3_ep *dep;
 u8 epnum;

 for (epnum = 0; epnum < DWC3_ENDPOINTS_NUM; epnum++) {
  dep = dwc->eps[epnum];
  if (!dep)
   continue;
  if (epnum != 0 && epnum != 1) {
   dwc3_free_trb_pool(dep);
   list_del(&dep->endpoint.ep_list);
  }

  kfree(dep);
 }
}
