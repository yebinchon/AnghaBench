
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct dwc2_qtd {size_t isoc_frame_index_last; scalar_t__ isoc_frame_index; TYPE_1__* urb; } ;
struct dwc2_qh {int ntd; scalar_t__* n_bytes; struct dwc2_dma_desc* desc_list; scalar_t__ desc_list_dma; } ;
struct dwc2_hsotg {int dev; } ;
struct dwc2_host_chan {scalar_t__ halt_status; scalar_t__ ep_is_in; } ;
struct dwc2_hcd_iso_packet_desc {int status; scalar_t__ actual_length; scalar_t__ offset; } ;
struct dwc2_dma_desc {int status; scalar_t__ buf; } ;
struct TYPE_2__ {scalar_t__ packet_count; int error_count; scalar_t__ dma; struct dwc2_hcd_iso_packet_desc* iso_descs; } ;


 int DMA_FROM_DEVICE ;
 int DWC2_CMPL_DONE ;
 int DWC2_CMPL_STOP ;
 scalar_t__ DWC2_HC_XFER_URB_DEQUEUE ;
 int EINVAL ;
 int EPROTO ;
 int HOST_DMA_IOC ;
 int HOST_DMA_ISOC_NBYTES_MASK ;
 int HOST_DMA_ISOC_NBYTES_SHIFT ;
 int HOST_DMA_STS_MASK ;
 int HOST_DMA_STS_PKTERR ;
 int dma_sync_single_for_cpu (int ,scalar_t__,int,int ) ;
 int dwc2_hcd_qtd_unlink_and_free (struct dwc2_hsotg*,struct dwc2_qtd*,struct dwc2_qh*) ;
 int dwc2_host_complete (struct dwc2_hsotg*,struct dwc2_qtd*,int ) ;

__attribute__((used)) static int dwc2_cmpl_host_isoc_dma_desc(struct dwc2_hsotg *hsotg,
     struct dwc2_host_chan *chan,
     struct dwc2_qtd *qtd,
     struct dwc2_qh *qh, u16 idx)
{
 struct dwc2_dma_desc *dma_desc;
 struct dwc2_hcd_iso_packet_desc *frame_desc;
 u16 remain = 0;
 int rc = 0;

 if (!qtd->urb)
  return -EINVAL;

 dma_sync_single_for_cpu(hsotg->dev, qh->desc_list_dma + (idx *
    sizeof(struct dwc2_dma_desc)),
    sizeof(struct dwc2_dma_desc),
    DMA_FROM_DEVICE);

 dma_desc = &qh->desc_list[idx];

 frame_desc = &qtd->urb->iso_descs[qtd->isoc_frame_index_last];
 dma_desc->buf = (u32)(qtd->urb->dma + frame_desc->offset);
 if (chan->ep_is_in)
  remain = (dma_desc->status & HOST_DMA_ISOC_NBYTES_MASK) >>
    HOST_DMA_ISOC_NBYTES_SHIFT;

 if ((dma_desc->status & HOST_DMA_STS_MASK) == HOST_DMA_STS_PKTERR) {





  qtd->urb->error_count++;
  frame_desc->actual_length = qh->n_bytes[idx] - remain;
  frame_desc->status = -EPROTO;
 } else {

  frame_desc->actual_length = qh->n_bytes[idx] - remain;
  frame_desc->status = 0;
 }

 if (++qtd->isoc_frame_index == qtd->urb->packet_count) {




  dwc2_host_complete(hsotg, qtd, 0);
  dwc2_hcd_qtd_unlink_and_free(hsotg, qtd, qh);







  if (chan->halt_status == DWC2_HC_XFER_URB_DEQUEUE)
   return -1;
  rc = DWC2_CMPL_DONE;
 }

 qh->ntd--;


 if (dma_desc->status & HOST_DMA_IOC)
  rc = DWC2_CMPL_STOP;

 return rc;
}
