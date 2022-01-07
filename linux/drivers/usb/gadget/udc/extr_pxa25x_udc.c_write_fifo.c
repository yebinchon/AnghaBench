
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; scalar_t__ actual; scalar_t__ zero; } ;
struct pxa25x_request {TYPE_2__ req; } ;
struct TYPE_3__ {int name; int desc; } ;
struct pxa25x_ep {unsigned int fifo_size; int queue; TYPE_1__ ep; } ;


 int DBG (int ,char*,int ,unsigned int,char*,char*,scalar_t__,struct pxa25x_request*) ;
 int DBG_VERY_NOISY ;
 int UDCCS_BI_TFS ;
 int UDCCS_BI_TPC ;
 int UDCCS_BI_TSP ;
 int done (struct pxa25x_ep*,struct pxa25x_request*,int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ list_empty (int *) ;
 int pio_irq_disable (struct pxa25x_ep*) ;
 int udc_ep_get_UDCCS (struct pxa25x_ep*) ;
 int udc_ep_set_UDCCS (struct pxa25x_ep*,int ) ;
 int unlikely (int) ;
 unsigned int usb_endpoint_maxp (int ) ;
 unsigned int write_packet (struct pxa25x_ep*,struct pxa25x_request*,unsigned int) ;

__attribute__((used)) static int
write_fifo (struct pxa25x_ep *ep, struct pxa25x_request *req)
{
 unsigned max;

 max = usb_endpoint_maxp(ep->ep.desc);
 do {
  unsigned count;
  int is_last, is_short;

  count = write_packet(ep, req, max);


  if (unlikely (count != max))
   is_last = is_short = 1;
  else {
   if (likely(req->req.length != req->req.actual)
     || req->req.zero)
    is_last = 0;
   else
    is_last = 1;

   is_short = unlikely (max < ep->fifo_size);
  }

  DBG(DBG_VERY_NOISY, "wrote %s %d bytes%s%s %d left %p\n",
   ep->ep.name, count,
   is_last ? "/L" : "", is_short ? "/S" : "",
   req->req.length - req->req.actual, req);





  udc_ep_set_UDCCS(ep, UDCCS_BI_TPC);
  if (is_short)
   udc_ep_set_UDCCS(ep, UDCCS_BI_TSP);


  if (is_last) {
   done (ep, req, 0);
   if (list_empty(&ep->queue))
    pio_irq_disable(ep);
   return 1;
  }





 } while (udc_ep_get_UDCCS(ep) & UDCCS_BI_TFS);
 return 0;
}
