
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct geni_se {scalar_t__ base; } ;


 scalar_t__ SE_DMA_RX_IRQ_CLR ;
 scalar_t__ SE_DMA_TX_IRQ_CLR ;
 scalar_t__ SE_GENI_M_IRQ_CLEAR ;
 scalar_t__ SE_GENI_S_IRQ_CLEAR ;
 scalar_t__ SE_GSI_EVENT_EN ;
 scalar_t__ SE_IRQ_EN ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void geni_se_irq_clear(struct geni_se *se)
{
 writel_relaxed(0, se->base + SE_GSI_EVENT_EN);
 writel_relaxed(0xffffffff, se->base + SE_GENI_M_IRQ_CLEAR);
 writel_relaxed(0xffffffff, se->base + SE_GENI_S_IRQ_CLEAR);
 writel_relaxed(0xffffffff, se->base + SE_DMA_TX_IRQ_CLR);
 writel_relaxed(0xffffffff, se->base + SE_DMA_RX_IRQ_CLR);
 writel_relaxed(0xffffffff, se->base + SE_IRQ_EN);
}
