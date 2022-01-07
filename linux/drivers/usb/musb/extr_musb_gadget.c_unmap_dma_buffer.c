
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dma; int length; } ;
struct musb_request {scalar_t__ map_state; scalar_t__ tx; TYPE_1__ request; struct musb_ep* ep; } ;
struct musb_ep {int dma; } ;
struct musb {int controller; } ;


 scalar_t__ DMA_ADDR_INVALID ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 scalar_t__ MUSB_MAPPED ;
 scalar_t__ UN_MAPPED ;
 int dev_vdbg (int ,char*) ;
 int dma_sync_single_for_cpu (int ,scalar_t__,int ,int ) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 int is_buffer_mapped (struct musb_request*) ;

__attribute__((used)) static inline void unmap_dma_buffer(struct musb_request *request,
    struct musb *musb)
{
 struct musb_ep *musb_ep = request->ep;

 if (!is_buffer_mapped(request) || !musb_ep->dma)
  return;

 if (request->request.dma == DMA_ADDR_INVALID) {
  dev_vdbg(musb->controller,
    "not unmapping a never mapped buffer\n");
  return;
 }
 if (request->map_state == MUSB_MAPPED) {
  dma_unmap_single(musb->controller,
   request->request.dma,
   request->request.length,
   request->tx
    ? DMA_TO_DEVICE
    : DMA_FROM_DEVICE);
  request->request.dma = DMA_ADDR_INVALID;
 } else {
  dma_sync_single_for_cpu(musb->controller,
   request->request.dma,
   request->request.length,
   request->tx
    ? DMA_TO_DEVICE
    : DMA_FROM_DEVICE);
 }
 request->map_state = UN_MAPPED;
}
