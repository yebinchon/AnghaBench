
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwc3_trb {int dummy; } ;
struct TYPE_2__ {unsigned int stream_id; unsigned int short_not_ok; unsigned int no_interrupt; scalar_t__ num_sgs; unsigned int length; int dma; } ;
struct dwc3_request {int num_trbs; int trb_dma; struct dwc3_trb* trb; TYPE_1__ request; int start_sg; } ;
struct dwc3_ep {size_t trb_enqueue; struct dwc3_trb* trb_pool; } ;
typedef int dma_addr_t ;


 int __dwc3_prepare_one_trb (struct dwc3_ep*,struct dwc3_trb*,int ,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int dwc3_gadget_move_started_request (struct dwc3_request*) ;
 int dwc3_trb_dma_offset (struct dwc3_ep*,struct dwc3_trb*) ;
 int sg_dma_address (int ) ;
 unsigned int sg_dma_len (int ) ;

__attribute__((used)) static void dwc3_prepare_one_trb(struct dwc3_ep *dep,
  struct dwc3_request *req, unsigned chain, unsigned node)
{
 struct dwc3_trb *trb;
 unsigned int length;
 dma_addr_t dma;
 unsigned stream_id = req->request.stream_id;
 unsigned short_not_ok = req->request.short_not_ok;
 unsigned no_interrupt = req->request.no_interrupt;

 if (req->request.num_sgs > 0) {
  length = sg_dma_len(req->start_sg);
  dma = sg_dma_address(req->start_sg);
 } else {
  length = req->request.length;
  dma = req->request.dma;
 }

 trb = &dep->trb_pool[dep->trb_enqueue];

 if (!req->trb) {
  dwc3_gadget_move_started_request(req);
  req->trb = trb;
  req->trb_dma = dwc3_trb_dma_offset(dep, trb);
 }

 req->num_trbs++;

 __dwc3_prepare_one_trb(dep, trb, dma, length, chain, node,
   stream_id, short_not_ok, no_interrupt);
}
