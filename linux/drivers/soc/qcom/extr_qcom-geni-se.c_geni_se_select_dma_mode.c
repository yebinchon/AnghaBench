
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct geni_se {scalar_t__ base; } ;


 int GENI_DMA_MODE_EN ;
 scalar_t__ SE_GENI_DMA_MODE_EN ;
 int geni_se_irq_clear (struct geni_se*) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void geni_se_select_dma_mode(struct geni_se *se)
{
 u32 val;

 geni_se_irq_clear(se);

 val = readl_relaxed(se->base + SE_GENI_DMA_MODE_EN);
 val |= GENI_DMA_MODE_EN;
 writel_relaxed(val, se->base + SE_GENI_DMA_MODE_EN);
}
