
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct dwc2_qtd {size_t isoc_frame_index; int isoc_split_offset; TYPE_2__* urb; scalar_t__ complete_split; } ;
struct dwc2_hsotg {int dev; } ;
struct dwc2_host_chan {TYPE_1__* qh; scalar_t__ xfer_dma; scalar_t__ align_buf; } ;
struct dwc2_hcd_iso_packet_desc {int actual_length; scalar_t__ length; scalar_t__ status; } ;
struct TYPE_4__ {size_t packet_count; scalar_t__ dma; scalar_t__ buf; struct dwc2_hcd_iso_packet_desc* iso_descs; } ;
struct TYPE_3__ {int dw_align_buf; int dw_align_buf_dma; } ;


 int DMA_FROM_DEVICE ;
 int DWC2_HC_XFER_COMPLETE ;
 int DWC2_HC_XFER_NO_HALT_STATUS ;
 int DWC2_HC_XFER_URB_COMPLETE ;
 int DWC2_KMEM_UNALIGNED_BUF_SIZE ;
 int HCTSIZ (int) ;
 int TSIZ_SC_MC_PID_MASK ;
 int TSIZ_SC_MC_PID_SHIFT ;
 int dev_vdbg (int ,char*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int dwc2_get_actual_xfer_length (struct dwc2_hsotg*,struct dwc2_host_chan*,int,struct dwc2_qtd*,int ,int *) ;
 int dwc2_host_complete (struct dwc2_hsotg*,struct dwc2_qtd*,int ) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_release_channel (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*,int ) ;
 int memcpy (scalar_t__,int ,int) ;

__attribute__((used)) static int dwc2_xfercomp_isoc_split_in(struct dwc2_hsotg *hsotg,
           struct dwc2_host_chan *chan, int chnum,
           struct dwc2_qtd *qtd)
{
 struct dwc2_hcd_iso_packet_desc *frame_desc;
 u32 len;
 u32 hctsiz;
 u32 pid;

 if (!qtd->urb)
  return 0;

 frame_desc = &qtd->urb->iso_descs[qtd->isoc_frame_index];
 len = dwc2_get_actual_xfer_length(hsotg, chan, chnum, qtd,
       DWC2_HC_XFER_COMPLETE, ((void*)0));
 if (!len && !qtd->isoc_split_offset) {
  qtd->complete_split = 0;
  return 0;
 }

 frame_desc->actual_length += len;

 if (chan->align_buf) {
  dev_vdbg(hsotg->dev, "non-aligned buffer\n");
  dma_unmap_single(hsotg->dev, chan->qh->dw_align_buf_dma,
     DWC2_KMEM_UNALIGNED_BUF_SIZE, DMA_FROM_DEVICE);
  memcpy(qtd->urb->buf + (chan->xfer_dma - qtd->urb->dma),
         chan->qh->dw_align_buf, len);
 }

 qtd->isoc_split_offset += len;

 hctsiz = dwc2_readl(hsotg, HCTSIZ(chnum));
 pid = (hctsiz & TSIZ_SC_MC_PID_MASK) >> TSIZ_SC_MC_PID_SHIFT;

 if (frame_desc->actual_length >= frame_desc->length || pid == 0) {
  frame_desc->status = 0;
  qtd->isoc_frame_index++;
  qtd->complete_split = 0;
  qtd->isoc_split_offset = 0;
 }

 if (qtd->isoc_frame_index == qtd->urb->packet_count) {
  dwc2_host_complete(hsotg, qtd, 0);
  dwc2_release_channel(hsotg, chan, qtd,
         DWC2_HC_XFER_URB_COMPLETE);
 } else {
  dwc2_release_channel(hsotg, chan, qtd,
         DWC2_HC_XFER_NO_HALT_STATUS);
 }

 return 1;
}
