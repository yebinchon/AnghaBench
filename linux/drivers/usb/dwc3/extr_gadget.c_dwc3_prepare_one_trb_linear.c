
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dwc3_trb {int dummy; } ;
struct TYPE_4__ {unsigned int length; int no_interrupt; int short_not_ok; int stream_id; scalar_t__ zero; } ;
struct dwc3_request {int needs_extra_trb; TYPE_2__ request; int num_trbs; } ;
struct TYPE_3__ {int desc; } ;
struct dwc3_ep {size_t trb_enqueue; struct dwc3_trb* trb_pool; struct dwc3* dwc; TYPE_1__ endpoint; } ;
struct dwc3 {int bounce_addr; } ;


 scalar_t__ IS_ALIGNED (unsigned int,unsigned int) ;
 int __dwc3_prepare_one_trb (struct dwc3_ep*,struct dwc3_trb*,int ,unsigned int,int,int,int ,int ,int ) ;
 int dwc3_prepare_one_trb (struct dwc3_ep*,struct dwc3_request*,int,int ) ;
 scalar_t__ usb_endpoint_dir_out (int ) ;
 unsigned int usb_endpoint_maxp (int ) ;

__attribute__((used)) static void dwc3_prepare_one_trb_linear(struct dwc3_ep *dep,
  struct dwc3_request *req)
{
 unsigned int length = req->request.length;
 unsigned int maxp = usb_endpoint_maxp(dep->endpoint.desc);
 unsigned int rem = length % maxp;

 if ((!length || rem) && usb_endpoint_dir_out(dep->endpoint.desc)) {
  struct dwc3 *dwc = dep->dwc;
  struct dwc3_trb *trb;

  req->needs_extra_trb = 1;


  dwc3_prepare_one_trb(dep, req, 1, 0);


  trb = &dep->trb_pool[dep->trb_enqueue];
  req->num_trbs++;
  __dwc3_prepare_one_trb(dep, trb, dwc->bounce_addr, maxp - rem,
    0, 1, req->request.stream_id,
    req->request.short_not_ok,
    req->request.no_interrupt);
 } else if (req->request.zero && req->request.length &&
     (IS_ALIGNED(req->request.length, maxp))) {
  struct dwc3 *dwc = dep->dwc;
  struct dwc3_trb *trb;

  req->needs_extra_trb = 1;


  dwc3_prepare_one_trb(dep, req, 1, 0);


  trb = &dep->trb_pool[dep->trb_enqueue];
  req->num_trbs++;
  __dwc3_prepare_one_trb(dep, trb, dwc->bounce_addr, 0,
    0, 1, req->request.stream_id,
    req->request.short_not_ok,
    req->request.no_interrupt);
 } else {
  dwc3_prepare_one_trb(dep, req, 0, 0);
 }
}
