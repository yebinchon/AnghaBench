
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int ep_list; } ;
struct dwc3 {TYPE_1__ gadget; } ;


 int INIT_LIST_HEAD (int *) ;
 int dwc3_gadget_init_endpoint (struct dwc3*,scalar_t__) ;

__attribute__((used)) static int dwc3_gadget_init_endpoints(struct dwc3 *dwc, u8 total)
{
 u8 epnum;

 INIT_LIST_HEAD(&dwc->gadget.ep_list);

 for (epnum = 0; epnum < total; epnum++) {
  int ret;

  ret = dwc3_gadget_init_endpoint(dwc, epnum);
  if (ret)
   return ret;
 }

 return 0;
}
