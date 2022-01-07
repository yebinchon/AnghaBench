
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tusb_omap_dma_ch {int epnum; TYPE_1__* tusb_dma; int * dma_data; int tbase; scalar_t__ tx; } ;
struct TYPE_2__ {int * dma_pool; } ;


 int EAGAIN ;
 int MAX_DMAREQ ;
 int TUSB_DMA_EP_MAP ;
 int musb_readl (int ,int ) ;
 int musb_writel (int ,int ,int) ;

__attribute__((used)) static inline int tusb_omap_dma_allocate_dmareq(struct tusb_omap_dma_ch *chdat)
{
 u32 reg = musb_readl(chdat->tbase, TUSB_DMA_EP_MAP);
 int i, dmareq_nr = -1;

 for (i = 0; i < MAX_DMAREQ; i++) {
  int cur = (reg & (0xf << (i * 5))) >> (i * 5);
  if (cur == 0) {
   dmareq_nr = i;
   break;
  }
 }

 if (dmareq_nr == -1)
  return -EAGAIN;

 reg |= (chdat->epnum << (dmareq_nr * 5));
 if (chdat->tx)
  reg |= ((1 << 4) << (dmareq_nr * 5));
 musb_writel(chdat->tbase, TUSB_DMA_EP_MAP, reg);

 chdat->dma_data = &chdat->tusb_dma->dma_pool[dmareq_nr];

 return 0;
}
