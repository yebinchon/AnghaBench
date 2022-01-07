
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {int master; } ;
struct mtk_spi {int state; scalar_t__ base; } ;


 int MTK_SPI_IDLE ;
 int SPI_CMD_PAUSE_EN ;
 scalar_t__ SPI_CMD_REG ;
 int mtk_spi_reset (struct mtk_spi*) ;
 int readl (scalar_t__) ;
 struct mtk_spi* spi_master_get_devdata (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mtk_spi_set_cs(struct spi_device *spi, bool enable)
{
 u32 reg_val;
 struct mtk_spi *mdata = spi_master_get_devdata(spi->master);

 reg_val = readl(mdata->base + SPI_CMD_REG);
 if (!enable) {
  reg_val |= SPI_CMD_PAUSE_EN;
  writel(reg_val, mdata->base + SPI_CMD_REG);
 } else {
  reg_val &= ~SPI_CMD_PAUSE_EN;
  writel(reg_val, mdata->base + SPI_CMD_REG);
  mdata->state = MTK_SPI_IDLE;
  mtk_spi_reset(mdata);
 }
}
