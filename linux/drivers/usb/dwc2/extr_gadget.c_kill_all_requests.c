
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg_req {int dummy; } ;
struct dwc2_hsotg_ep {unsigned int fifo_size; int fifo_index; int queue; int * req; } ;
struct dwc2_hsotg {int dedicated_fifos; } ;


 int DTXFSTS (int ) ;
 int dwc2_hsotg_complete_request (struct dwc2_hsotg*,struct dwc2_hsotg_ep*,struct dwc2_hsotg_req*,int) ;
 int dwc2_hsotg_txfifo_flush (struct dwc2_hsotg*,int ) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 struct dwc2_hsotg_req* get_ep_head (struct dwc2_hsotg_ep*) ;
 int list_empty (int *) ;

__attribute__((used)) static void kill_all_requests(struct dwc2_hsotg *hsotg,
         struct dwc2_hsotg_ep *ep,
         int result)
{
 unsigned int size;

 ep->req = ((void*)0);

 while (!list_empty(&ep->queue)) {
  struct dwc2_hsotg_req *req = get_ep_head(ep);

  dwc2_hsotg_complete_request(hsotg, ep, req, result);
 }

 if (!hsotg->dedicated_fifos)
  return;
 size = (dwc2_readl(hsotg, DTXFSTS(ep->fifo_index)) & 0xffff) * 4;
 if (size < ep->fifo_size)
  dwc2_hsotg_txfifo_flush(hsotg, ep->fifo_index);
}
