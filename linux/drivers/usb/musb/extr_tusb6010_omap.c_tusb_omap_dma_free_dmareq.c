
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tusb_omap_dma_ch {TYPE_1__* dma_data; int tbase; } ;
struct TYPE_2__ {int dmareq; } ;


 int TUSB_DMA_EP_MAP ;
 int musb_readl (int ,int ) ;
 int musb_writel (int ,int ,int) ;

__attribute__((used)) static inline void tusb_omap_dma_free_dmareq(struct tusb_omap_dma_ch *chdat)
{
 u32 reg;

 if (!chdat || !chdat->dma_data || chdat->dma_data->dmareq < 0)
  return;

 reg = musb_readl(chdat->tbase, TUSB_DMA_EP_MAP);
 reg &= ~(0x1f << (chdat->dma_data->dmareq * 5));
 musb_writel(chdat->tbase, TUSB_DMA_EP_MAP, reg);

 chdat->dma_data = ((void*)0);
}
