
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct dwc2_qtd {size_t isoc_frame_index_last; TYPE_1__* urb; } ;
struct dwc2_qh {scalar_t__* n_bytes; scalar_t__ desc_list_dma; int ntd; struct dwc2_dma_desc* desc_list; } ;
struct dwc2_hsotg {int dev; } ;
struct dwc2_hcd_iso_packet_desc {scalar_t__ length; scalar_t__ offset; } ;
struct dwc2_dma_desc {int status; scalar_t__ buf; } ;
struct TYPE_2__ {size_t packet_count; scalar_t__ dma; struct dwc2_hcd_iso_packet_desc* iso_descs; } ;


 int DMA_TO_DEVICE ;
 int HOST_DMA_A ;
 int HOST_DMA_IOC ;
 int HOST_DMA_ISOC_NBYTES_MASK ;
 int HOST_DMA_ISOC_NBYTES_SHIFT ;
 int dma_sync_single_for_device (int ,scalar_t__,int,int ) ;
 int memset (struct dwc2_dma_desc*,int ,int) ;

__attribute__((used)) static void dwc2_fill_host_isoc_dma_desc(struct dwc2_hsotg *hsotg,
      struct dwc2_qtd *qtd,
      struct dwc2_qh *qh, u32 max_xfer_size,
      u16 idx)
{
 struct dwc2_dma_desc *dma_desc = &qh->desc_list[idx];
 struct dwc2_hcd_iso_packet_desc *frame_desc;

 memset(dma_desc, 0, sizeof(*dma_desc));
 frame_desc = &qtd->urb->iso_descs[qtd->isoc_frame_index_last];

 if (frame_desc->length > max_xfer_size)
  qh->n_bytes[idx] = max_xfer_size;
 else
  qh->n_bytes[idx] = frame_desc->length;

 dma_desc->buf = (u32)(qtd->urb->dma + frame_desc->offset);
 dma_desc->status = qh->n_bytes[idx] << HOST_DMA_ISOC_NBYTES_SHIFT &
      HOST_DMA_ISOC_NBYTES_MASK;


 dma_desc->status |= HOST_DMA_A;

 qh->ntd++;
 qtd->isoc_frame_index_last++;







 dma_sync_single_for_device(hsotg->dev,
       qh->desc_list_dma +
   (idx * sizeof(struct dwc2_dma_desc)),
   sizeof(struct dwc2_dma_desc),
   DMA_TO_DEVICE);
}
