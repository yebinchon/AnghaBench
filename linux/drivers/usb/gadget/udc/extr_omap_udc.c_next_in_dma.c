
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {unsigned int length; unsigned int actual; scalar_t__ dma; } ;
struct omap_req {unsigned int dma_bytes; TYPE_2__ req; } ;
struct TYPE_3__ {int maxpacket; } ;
struct omap_ep {unsigned int maxpacket; int dma_channel; int lch; int dma_counter; TYPE_1__ ep; } ;


 int OMAP_DMA_AMODE_POST_INC ;
 int OMAP_DMA_DATA_TYPE_S16 ;
 int OMAP_DMA_DATA_TYPE_S8 ;
 int OMAP_DMA_PORT_EMIFF ;
 int OMAP_DMA_SYNC_ELEMENT ;
 int OMAP_DMA_SYNC_FRAME ;
 int UDC_DMA_IRQ_EN ;
 int UDC_TXDMA (int ) ;
 unsigned int UDC_TXN_EOT ;
 int UDC_TXN_START ;
 unsigned int UDC_TXN_TSC ;
 int UDC_TX_DONE_IE (int ) ;
 scalar_t__ cpu_is_omap15xx () ;
 scalar_t__ cpu_is_omap16xx () ;
 unsigned int min (unsigned int,unsigned int) ;
 int omap_get_dma_src_pos (int ) ;
 int omap_readw (int ) ;
 int omap_set_dma_src_params (int ,int ,int ,scalar_t__,int ,int ) ;
 int omap_set_dma_transfer_params (int ,int ,int,unsigned int,int const,int,int ) ;
 int omap_start_dma (int ) ;
 int omap_writew (int,int ) ;

__attribute__((used)) static void next_in_dma(struct omap_ep *ep, struct omap_req *req)
{
 u16 txdma_ctrl, w;
 unsigned length = req->req.length - req->req.actual;
 const int sync_mode = cpu_is_omap15xx()
    ? OMAP_DMA_SYNC_FRAME
    : OMAP_DMA_SYNC_ELEMENT;
 int dma_trigger = 0;


 if ((cpu_is_omap16xx() && length <= UDC_TXN_TSC)
   || (cpu_is_omap15xx() && length < ep->maxpacket)) {
  txdma_ctrl = UDC_TXN_EOT | length;
  omap_set_dma_transfer_params(ep->lch, OMAP_DMA_DATA_TYPE_S8,
    length, 1, sync_mode, dma_trigger, 0);
 } else {
  length = min(length / ep->maxpacket,
    (unsigned) UDC_TXN_TSC + 1);
  txdma_ctrl = length;
  omap_set_dma_transfer_params(ep->lch, OMAP_DMA_DATA_TYPE_S16,
    ep->ep.maxpacket >> 1, length, sync_mode,
    dma_trigger, 0);
  length *= ep->maxpacket;
 }
 omap_set_dma_src_params(ep->lch, OMAP_DMA_PORT_EMIFF,
  OMAP_DMA_AMODE_POST_INC, req->req.dma + req->req.actual,
  0, 0);

 omap_start_dma(ep->lch);
 ep->dma_counter = omap_get_dma_src_pos(ep->lch);
 w = omap_readw(UDC_DMA_IRQ_EN);
 w |= UDC_TX_DONE_IE(ep->dma_channel);
 omap_writew(w, UDC_DMA_IRQ_EN);
 omap_writew(UDC_TXN_START | txdma_ctrl, UDC_TXDMA(ep->dma_channel));
 req->dma_bytes = length;
}
