
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3_trb {int dummy; } ;
struct dwc3_ep {int trb_pool_dma; scalar_t__ trb_pool; } ;
typedef int dma_addr_t ;



__attribute__((used)) static dma_addr_t dwc3_trb_dma_offset(struct dwc3_ep *dep,
  struct dwc3_trb *trb)
{
 u32 offset = (char *) trb - (char *) dep->trb_pool;

 return dep->trb_pool_dma + offset;
}
