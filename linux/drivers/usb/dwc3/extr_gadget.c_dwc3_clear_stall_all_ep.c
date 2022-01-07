
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct dwc3_ep {int flags; } ;
struct dwc3 {struct dwc3_ep** eps; } ;


 size_t DWC3_ENDPOINTS_NUM ;
 int DWC3_EP_STALL ;
 int WARN_ON_ONCE (int) ;
 int dwc3_send_clear_stall_ep_cmd (struct dwc3_ep*) ;

__attribute__((used)) static void dwc3_clear_stall_all_ep(struct dwc3 *dwc)
{
 u32 epnum;

 for (epnum = 1; epnum < DWC3_ENDPOINTS_NUM; epnum++) {
  struct dwc3_ep *dep;
  int ret;

  dep = dwc->eps[epnum];
  if (!dep)
   continue;

  if (!(dep->flags & DWC3_EP_STALL))
   continue;

  dep->flags &= ~DWC3_EP_STALL;

  ret = dwc3_send_clear_stall_ep_cmd(dep);
  WARN_ON_ONCE(ret);
 }
}
