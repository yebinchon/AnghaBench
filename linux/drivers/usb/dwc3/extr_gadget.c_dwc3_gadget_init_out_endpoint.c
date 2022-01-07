
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int type_iso; int type_bulk; int type_int; } ;
struct TYPE_6__ {int max_streams; TYPE_2__ caps; int ep_list; int * ops; } ;
struct dwc3_ep {TYPE_3__ endpoint; struct dwc3* dwc; } ;
struct TYPE_4__ {int ep_list; } ;
struct dwc3 {TYPE_1__ gadget; } ;


 int dwc3_alloc_trb_pool (struct dwc3_ep*) ;
 int dwc3_gadget_ep_ops ;
 int list_add_tail (int *,int *) ;
 int usb_ep_set_maxpacket_limit (TYPE_3__*,int) ;

__attribute__((used)) static int dwc3_gadget_init_out_endpoint(struct dwc3_ep *dep)
{
 struct dwc3 *dwc = dep->dwc;

 usb_ep_set_maxpacket_limit(&dep->endpoint, 1024);
 dep->endpoint.max_streams = 15;
 dep->endpoint.ops = &dwc3_gadget_ep_ops;
 list_add_tail(&dep->endpoint.ep_list,
   &dwc->gadget.ep_list);
 dep->endpoint.caps.type_iso = 1;
 dep->endpoint.caps.type_bulk = 1;
 dep->endpoint.caps.type_int = 1;

 return dwc3_alloc_trb_pool(dep);
}
