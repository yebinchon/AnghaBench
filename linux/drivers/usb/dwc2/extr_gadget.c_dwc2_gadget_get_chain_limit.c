
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg_ep {int isochronous; scalar_t__ dir_in; } ;


 unsigned int DEV_DMA_ISOC_RX_NBYTES_LIMIT ;
 unsigned int DEV_DMA_ISOC_TX_NBYTES_LIMIT ;
 unsigned int DEV_DMA_NBYTES_LIMIT ;
 unsigned int MAX_DMA_DESC_NUM_GENERIC ;
 unsigned int MAX_DMA_DESC_NUM_HS_ISOC ;

__attribute__((used)) static unsigned int dwc2_gadget_get_chain_limit(struct dwc2_hsotg_ep *hs_ep)
{
 int is_isoc = hs_ep->isochronous;
 unsigned int maxsize;

 if (is_isoc)
  maxsize = (hs_ep->dir_in ? DEV_DMA_ISOC_TX_NBYTES_LIMIT :
        DEV_DMA_ISOC_RX_NBYTES_LIMIT) *
        MAX_DMA_DESC_NUM_HS_ISOC;
 else
  maxsize = DEV_DMA_NBYTES_LIMIT * MAX_DMA_DESC_NUM_GENERIC;

 return maxsize;
}
