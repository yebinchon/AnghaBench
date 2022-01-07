
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dwc2_qtd {scalar_t__ control_phase; } ;
struct dwc2_qh {int* n_bytes; scalar_t__ ep_type; scalar_t__ desc_list_dma; struct dwc2_dma_desc* desc_list; } ;
struct dwc2_hsotg {int dev; } ;
struct dwc2_host_chan {int xfer_len; int max_packet; scalar_t__ xfer_dma; scalar_t__ ep_is_in; } ;
struct dwc2_dma_desc {int status; scalar_t__ buf; } ;


 int DMA_TO_DEVICE ;
 scalar_t__ DWC2_CONTROL_SETUP ;
 int HOST_DMA_NBYTES_LIMIT ;
 int HOST_DMA_NBYTES_MASK ;
 int HOST_DMA_NBYTES_SHIFT ;
 int HOST_DMA_SUP ;
 scalar_t__ USB_ENDPOINT_XFER_CONTROL ;
 int dma_sync_single_for_device (int ,scalar_t__,int,int ) ;

__attribute__((used)) static void dwc2_fill_host_dma_desc(struct dwc2_hsotg *hsotg,
        struct dwc2_host_chan *chan,
        struct dwc2_qtd *qtd, struct dwc2_qh *qh,
        int n_desc)
{
 struct dwc2_dma_desc *dma_desc = &qh->desc_list[n_desc];
 int len = chan->xfer_len;

 if (len > HOST_DMA_NBYTES_LIMIT - (chan->max_packet - 1))
  len = HOST_DMA_NBYTES_LIMIT - (chan->max_packet - 1);

 if (chan->ep_is_in) {
  int num_packets;

  if (len > 0 && chan->max_packet)
   num_packets = (len + chan->max_packet - 1)
     / chan->max_packet;
  else

   num_packets = 1;


  len = num_packets * chan->max_packet;
 }

 dma_desc->status = len << HOST_DMA_NBYTES_SHIFT & HOST_DMA_NBYTES_MASK;
 qh->n_bytes[n_desc] = len;

 if (qh->ep_type == USB_ENDPOINT_XFER_CONTROL &&
     qtd->control_phase == DWC2_CONTROL_SETUP)
  dma_desc->status |= HOST_DMA_SUP;

 dma_desc->buf = (u32)chan->xfer_dma;

 dma_sync_single_for_device(hsotg->dev,
       qh->desc_list_dma +
       (n_desc * sizeof(struct dwc2_dma_desc)),
       sizeof(struct dwc2_dma_desc),
       DMA_TO_DEVICE);





 if (len > chan->xfer_len) {
  chan->xfer_len = 0;
 } else {
  chan->xfer_dma += len;
  chan->xfer_len -= len;
 }
}
