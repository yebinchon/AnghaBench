
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int length; unsigned int actual; scalar_t__ dma; } ;
struct net2272_request {TYPE_2__ req; } ;
struct TYPE_6__ {int name; } ;
struct net2272_ep {int num; int not_empty; TYPE_3__* dev; scalar_t__ is_in; TYPE_1__ ep; int dma; } ;
struct TYPE_8__ {int dma_eot_polarity; int dma_dack_polarity; int dma_dreq_polarity; scalar_t__ dma_busy; int dev; } ;


 int ALT_NAK_OUT_PACKETS ;
 int BUFFER_EMPTY ;
 int DACK_POLARITY ;
 int DMAREQ ;
 int DMA_BUFFER_VALID ;
 int DMA_CONTROL_DACK ;
 int DMA_ENDPOINT_SELECT ;
 int DMA_REQUEST_ENABLE ;
 int DREQ_POLARITY ;
 int EBUSY ;
 int EINVAL ;
 int EOT_POLARITY ;
 int EP_IRQENB ;
 int EP_RSPCLR ;
 int EP_RSPSET ;
 int EP_STAT0 ;
 int SHORT_PACKET_TRANSFERRED_INTERRUPT ;
 int dev_vdbg (int ,char*,int ,struct net2272_request*,unsigned long long) ;
 int net2272_ep_read (struct net2272_ep*,int ) ;
 int net2272_ep_write (struct net2272_ep*,int ,int) ;
 scalar_t__ net2272_request_dma (TYPE_3__*,int,scalar_t__,unsigned int,int) ;
 int net2272_start_dma (TYPE_3__*) ;
 int net2272_write (TYPE_3__*,int ,int) ;
 int use_dma ;

__attribute__((used)) static int
net2272_kick_dma(struct net2272_ep *ep, struct net2272_request *req)
{
 unsigned size;
 u8 tmp;

 if (!use_dma || (ep->num < 1) || (ep->num > 2) || !ep->dma)
  return -EINVAL;




 if (req->req.length & 1)
  return -EINVAL;

 dev_vdbg(ep->dev->dev, "kick_dma %s req %p dma %08llx\n",
  ep->ep.name, req, (unsigned long long) req->req.dma);

 net2272_ep_write(ep, EP_RSPSET, 1 << ALT_NAK_OUT_PACKETS);


 if (ep->dev->dma_busy)
  return -EBUSY;




 size = req->req.length;
 size &= ~1;


 if (ep->is_in) {

  if (net2272_request_dma(ep->dev, ep->num, req->req.dma, size, 0))

   return -EBUSY;
  req->req.actual += size;


 } else {
  tmp = net2272_ep_read(ep, EP_STAT0);


  if (net2272_request_dma(ep->dev, ep->num, req->req.dma, size, 1))

   return -EBUSY;

  if (!(tmp & (1 << BUFFER_EMPTY)))
   ep->not_empty = 1;
  else
   ep->not_empty = 0;



  net2272_ep_write(ep, EP_RSPCLR, 1 << ALT_NAK_OUT_PACKETS);




  if (tmp & (1 << SHORT_PACKET_TRANSFERRED_INTERRUPT)) {


   net2272_write(ep->dev, DMAREQ,
    (0 << DMA_BUFFER_VALID) |
    (0 << DMA_REQUEST_ENABLE) |
    (1 << DMA_CONTROL_DACK) |
    (ep->dev->dma_eot_polarity << EOT_POLARITY) |
    (ep->dev->dma_dack_polarity << DACK_POLARITY) |
    (ep->dev->dma_dreq_polarity << DREQ_POLARITY) |
    ((ep->num >> 1) << DMA_ENDPOINT_SELECT));

   return -EBUSY;
  }
 }


 net2272_ep_write(ep, EP_IRQENB, 0);

 net2272_start_dma(ep->dev);

 return 0;
}
