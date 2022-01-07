
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fotg210_ep {TYPE_1__* fotg210; scalar_t__ epnum; } ;
struct TYPE_2__ {scalar_t__ reg; } ;


 int DCFESR_CX_CLR ;
 int DISGR2_DMA_CMPLT ;
 int DISGR2_DMA_ERROR ;
 int DISGR2_USBRST_INT ;
 int DMACPSR1_DMA_ABORT ;
 int FIBCR_FFRST ;
 scalar_t__ FOTG210_DCFESR ;
 scalar_t__ FOTG210_DISGR2 ;
 scalar_t__ FOTG210_DMACPSR1 ;
 scalar_t__ FOTG210_FIBCR (scalar_t__) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void fotg210_wait_dma_done(struct fotg210_ep *ep)
{
 u32 value;

 do {
  value = ioread32(ep->fotg210->reg + FOTG210_DISGR2);
  if ((value & DISGR2_USBRST_INT) ||
      (value & DISGR2_DMA_ERROR))
   goto dma_reset;
 } while (!(value & DISGR2_DMA_CMPLT));

 value &= ~DISGR2_DMA_CMPLT;
 iowrite32(value, ep->fotg210->reg + FOTG210_DISGR2);
 return;

dma_reset:
 value = ioread32(ep->fotg210->reg + FOTG210_DMACPSR1);
 value |= DMACPSR1_DMA_ABORT;
 iowrite32(value, ep->fotg210->reg + FOTG210_DMACPSR1);


 if (ep->epnum) {
  value = ioread32(ep->fotg210->reg +
    FOTG210_FIBCR(ep->epnum - 1));
  value |= FIBCR_FFRST;
  iowrite32(value, ep->fotg210->reg +
    FOTG210_FIBCR(ep->epnum - 1));
 } else {
  value = ioread32(ep->fotg210->reg + FOTG210_DCFESR);
  value |= DCFESR_CX_CLR;
  iowrite32(value, ep->fotg210->reg + FOTG210_DCFESR);
 }
}
