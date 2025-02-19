
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct dwc2_hsotg_ep {int desc_count; struct dwc2_dma_desc* desc_list; struct dwc2_hsotg* parent; } ;
struct dwc2_hsotg {int dev; } ;
struct dwc2_dma_desc {unsigned int status; } ;


 unsigned int DEV_DMA_NBYTES_MASK ;
 unsigned int DEV_DMA_STS_MASK ;
 unsigned int EINVAL ;
 int dev_err (int ,char*,int,unsigned int) ;

__attribute__((used)) static unsigned int dwc2_gadget_get_xfersize_ddma(struct dwc2_hsotg_ep *hs_ep)
{
 struct dwc2_hsotg *hsotg = hs_ep->parent;
 unsigned int bytes_rem = 0;
 struct dwc2_dma_desc *desc = hs_ep->desc_list;
 int i;
 u32 status;

 if (!desc)
  return -EINVAL;

 for (i = 0; i < hs_ep->desc_count; ++i) {
  status = desc->status;
  bytes_rem += status & DEV_DMA_NBYTES_MASK;

  if (status & DEV_DMA_STS_MASK)
   dev_err(hsotg->dev, "descriptor %d closed with %x\n",
    i, status & DEV_DMA_STS_MASK);
  desc++;
 }

 return bytes_rem;
}
