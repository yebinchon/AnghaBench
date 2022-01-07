
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int type_iso; int type_bulk; int type_int; } ;
struct TYPE_8__ {int max_streams; TYPE_3__ caps; int ep_list; int * ops; } ;
struct dwc3_ep {int number; TYPE_4__ endpoint; struct dwc3* dwc; } ;
struct TYPE_6__ {int ep_list; } ;
struct TYPE_5__ {int hwparams0; } ;
struct dwc3 {TYPE_2__ gadget; int regs; TYPE_1__ hwparams; } ;


 int DWC31_GTXFIFOSIZ_TXFDEF (int) ;
 int DWC3_GTXFIFOSIZ (int) ;
 int DWC3_GTXFIFOSIZ_TXFDEF (int) ;
 int DWC3_MDWIDTH (int ) ;
 int dwc3_alloc_trb_pool (struct dwc3_ep*) ;
 int dwc3_gadget_ep_ops ;
 scalar_t__ dwc3_is_usb31 (struct dwc3*) ;
 int dwc3_readl (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int usb_ep_set_maxpacket_limit (TYPE_4__*,int) ;

__attribute__((used)) static int dwc3_gadget_init_in_endpoint(struct dwc3_ep *dep)
{
 struct dwc3 *dwc = dep->dwc;
 int mdwidth;
 int kbytes;
 int size;

 mdwidth = DWC3_MDWIDTH(dwc->hwparams.hwparams0);

 mdwidth /= 8;

 size = dwc3_readl(dwc->regs, DWC3_GTXFIFOSIZ(dep->number >> 1));
 if (dwc3_is_usb31(dwc))
  size = DWC31_GTXFIFOSIZ_TXFDEF(size);
 else
  size = DWC3_GTXFIFOSIZ_TXFDEF(size);


 size *= mdwidth;

 kbytes = size / 1024;
 if (kbytes == 0)
  kbytes = 1;






 size -= mdwidth * (kbytes + 1);
 size /= kbytes;

 usb_ep_set_maxpacket_limit(&dep->endpoint, size);

 dep->endpoint.max_streams = 15;
 dep->endpoint.ops = &dwc3_gadget_ep_ops;
 list_add_tail(&dep->endpoint.ep_list,
   &dwc->gadget.ep_list);
 dep->endpoint.caps.type_iso = 1;
 dep->endpoint.caps.type_bulk = 1;
 dep->endpoint.caps.type_int = 1;

 return dwc3_alloc_trb_pool(dep);
}
