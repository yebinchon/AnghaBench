
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int maxpacket; } ;
struct dwc2_hsotg_ep {int dir_in; scalar_t__ isochronous; int index; TYPE_1__ ep; } ;


 int DEV_DMA_ISOC_RX_NBYTES_LIMIT ;
 int DEV_DMA_ISOC_RX_NBYTES_MASK ;
 int DEV_DMA_ISOC_TX_NBYTES_LIMIT ;
 int DEV_DMA_ISOC_TX_NBYTES_MASK ;
 int DEV_DMA_NBYTES_LIMIT ;
 int DEV_DMA_NBYTES_MASK ;

__attribute__((used)) static u32 dwc2_gadget_get_desc_params(struct dwc2_hsotg_ep *hs_ep, u32 *mask)
{
 u32 mps = hs_ep->ep.maxpacket;
 int dir_in = hs_ep->dir_in;
 u32 desc_size = 0;

 if (!hs_ep->index && !dir_in) {
  desc_size = mps;
  *mask = DEV_DMA_NBYTES_MASK;
 } else if (hs_ep->isochronous) {
  if (dir_in) {
   desc_size = DEV_DMA_ISOC_TX_NBYTES_LIMIT;
   *mask = DEV_DMA_ISOC_TX_NBYTES_MASK;
  } else {
   desc_size = DEV_DMA_ISOC_RX_NBYTES_LIMIT;
   *mask = DEV_DMA_ISOC_RX_NBYTES_MASK;
  }
 } else {
  desc_size = DEV_DMA_NBYTES_LIMIT;
  *mask = DEV_DMA_NBYTES_MASK;


  desc_size -= desc_size % mps;
 }

 return desc_size;
}
