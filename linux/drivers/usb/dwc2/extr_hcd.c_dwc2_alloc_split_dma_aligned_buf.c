
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_qh {scalar_t__ dw_align_buf_dma; scalar_t__ dw_align_buf; } ;
struct dwc2_hsotg {int dev; int unaligned_cache; } ;
struct dwc2_host_chan {scalar_t__ max_packet; scalar_t__ align_buf; } ;


 int DMA_FROM_DEVICE ;
 scalar_t__ DWC2_KMEM_UNALIGNED_BUF_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 int dev_err (int ,char*) ;
 scalar_t__ dma_map_single (int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 scalar_t__ kmem_cache_alloc (int ,int) ;

__attribute__((used)) static int dwc2_alloc_split_dma_aligned_buf(struct dwc2_hsotg *hsotg,
         struct dwc2_qh *qh,
         struct dwc2_host_chan *chan)
{
 if (!hsotg->unaligned_cache ||
     chan->max_packet > DWC2_KMEM_UNALIGNED_BUF_SIZE)
  return -ENOMEM;

 if (!qh->dw_align_buf) {
  qh->dw_align_buf = kmem_cache_alloc(hsotg->unaligned_cache,
          GFP_ATOMIC | GFP_DMA);
  if (!qh->dw_align_buf)
   return -ENOMEM;
 }

 qh->dw_align_buf_dma = dma_map_single(hsotg->dev, qh->dw_align_buf,
           DWC2_KMEM_UNALIGNED_BUF_SIZE,
           DMA_FROM_DEVICE);

 if (dma_mapping_error(hsotg->dev, qh->dw_align_buf_dma)) {
  dev_err(hsotg->dev, "can't map align_buf\n");
  chan->align_buf = 0;
  return -EINVAL;
 }

 chan->align_buf = qh->dw_align_buf_dma;
 return 0;
}
