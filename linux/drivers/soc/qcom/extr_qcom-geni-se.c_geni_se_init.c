
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct geni_se {scalar_t__ base; } ;


 int M_COMMON_GENI_M_IRQ_EN ;
 scalar_t__ SE_GENI_M_IRQ_EN ;
 scalar_t__ SE_GENI_RX_RFR_WATERMARK_REG ;
 scalar_t__ SE_GENI_RX_WATERMARK_REG ;
 scalar_t__ SE_GENI_S_IRQ_EN ;
 int S_COMMON_GENI_S_IRQ_EN ;
 int geni_se_io_init (scalar_t__) ;
 int geni_se_io_set_mode (scalar_t__) ;
 int geni_se_irq_clear (struct geni_se*) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

void geni_se_init(struct geni_se *se, u32 rx_wm, u32 rx_rfr)
{
 u32 val;

 geni_se_irq_clear(se);
 geni_se_io_init(se->base);
 geni_se_io_set_mode(se->base);

 writel_relaxed(rx_wm, se->base + SE_GENI_RX_WATERMARK_REG);
 writel_relaxed(rx_rfr, se->base + SE_GENI_RX_RFR_WATERMARK_REG);

 val = readl_relaxed(se->base + SE_GENI_M_IRQ_EN);
 val |= M_COMMON_GENI_M_IRQ_EN;
 writel_relaxed(val, se->base + SE_GENI_M_IRQ_EN);

 val = readl_relaxed(se->base + SE_GENI_S_IRQ_EN);
 val |= S_COMMON_GENI_S_IRQ_EN;
 writel_relaxed(val, se->base + SE_GENI_S_IRQ_EN);
}
