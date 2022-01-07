
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_spi {scalar_t__ base; } ;


 scalar_t__ SPI_CMD_REG ;
 int SPI_CMD_RST ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mtk_spi_reset(struct mtk_spi *mdata)
{
 u32 reg_val;


 reg_val = readl(mdata->base + SPI_CMD_REG);
 reg_val |= SPI_CMD_RST;
 writel(reg_val, mdata->base + SPI_CMD_REG);

 reg_val = readl(mdata->base + SPI_CMD_REG);
 reg_val &= ~SPI_CMD_RST;
 writel(reg_val, mdata->base + SPI_CMD_REG);
}
