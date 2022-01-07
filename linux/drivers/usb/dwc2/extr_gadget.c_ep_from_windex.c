
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg_ep {int dir_in; } ;
struct dwc2_hsotg {int num_of_eps; } ;


 int USB_DIR_IN ;
 struct dwc2_hsotg_ep* index_to_ep (struct dwc2_hsotg*,int,int) ;

__attribute__((used)) static struct dwc2_hsotg_ep *ep_from_windex(struct dwc2_hsotg *hsotg,
         u32 windex)
{
 struct dwc2_hsotg_ep *ep;
 int dir = (windex & USB_DIR_IN) ? 1 : 0;
 int idx = windex & 0x7F;

 if (windex >= 0x100)
  return ((void*)0);

 if (idx > hsotg->num_of_eps)
  return ((void*)0);

 ep = index_to_ep(hsotg, idx, dir);

 if (idx && ep->dir_in != dir)
  return ((void*)0);

 return ep;
}
