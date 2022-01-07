
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int nr_scratch; int scratchbuf; int scratch_addr; int sysdev; int has_hibernation; } ;


 int DMA_BIDIRECTIONAL ;
 int DWC3_SCRATCHBUF_SIZE ;
 int WARN_ON (int ) ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void dwc3_free_scratch_buffers(struct dwc3 *dwc)
{
 if (!dwc->has_hibernation)
  return;

 if (!dwc->nr_scratch)
  return;


 if (!WARN_ON(dwc->scratchbuf))
  return;

 dma_unmap_single(dwc->sysdev, dwc->scratch_addr, dwc->nr_scratch *
   DWC3_SCRATCHBUF_SIZE, DMA_BIDIRECTIONAL);
 kfree(dwc->scratchbuf);
}
