
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_spi_slave {scalar_t__ base; } ;


 scalar_t__ SPIS_CFG_REG ;
 int SPIS_RX_EN ;
 int SPIS_TX_EN ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mtk_spi_slave_disable_xfer(struct mtk_spi_slave *mdata)
{
 u32 reg_val;

 reg_val = readl(mdata->base + SPIS_CFG_REG);
 reg_val &= ~SPIS_TX_EN;
 reg_val &= ~SPIS_RX_EN;
 writel(reg_val, mdata->base + SPIS_CFG_REG);
}
