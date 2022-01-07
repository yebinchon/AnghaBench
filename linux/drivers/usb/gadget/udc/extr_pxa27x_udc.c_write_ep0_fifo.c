
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxa_ep {int dummy; } ;
struct TYPE_2__ {scalar_t__ actual; scalar_t__ length; } ;
struct pxa27x_request {TYPE_1__ req; } ;


 unsigned int EP0_FIFO_SIZE ;
 int UDCCSR ;
 int UDCCSR0_IPR ;
 int USB_DIR_IN ;
 int ep_dbg (struct pxa_ep*,char*,unsigned int,char*,char*,scalar_t__,TYPE_1__*,int ) ;
 int ep_write_UDCCSR (struct pxa_ep*,int ) ;
 int inc_ep_stats_bytes (struct pxa_ep*,unsigned int,int ) ;
 int udc_ep_readl (struct pxa_ep*,int ) ;
 scalar_t__ unlikely (int) ;
 unsigned int write_packet (struct pxa_ep*,struct pxa27x_request*,unsigned int) ;

__attribute__((used)) static int write_ep0_fifo(struct pxa_ep *ep, struct pxa27x_request *req)
{
 unsigned count;
 int is_last, is_short;

 count = write_packet(ep, req, EP0_FIFO_SIZE);
 inc_ep_stats_bytes(ep, count, USB_DIR_IN);

 is_short = (count < EP0_FIFO_SIZE);
 is_last = ((count == 0) || (count < EP0_FIFO_SIZE));


 if (unlikely(is_short))
  ep_write_UDCCSR(ep, UDCCSR0_IPR);

 ep_dbg(ep, "in %d bytes%s%s, %d left, req=%p, udccsr0=0x%03x\n",
  count, is_short ? "/S" : "", is_last ? "/L" : "",
  req->req.length - req->req.actual,
  &req->req, udc_ep_readl(ep, UDCCSR));

 return is_last;
}
