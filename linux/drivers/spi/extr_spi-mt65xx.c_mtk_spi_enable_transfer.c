
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_master {int dummy; } ;
struct mtk_spi {scalar_t__ state; scalar_t__ base; } ;


 scalar_t__ MTK_SPI_IDLE ;
 int SPI_CMD_ACT ;
 scalar_t__ SPI_CMD_REG ;
 int SPI_CMD_RESUME ;
 int readl (scalar_t__) ;
 struct mtk_spi* spi_master_get_devdata (struct spi_master*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mtk_spi_enable_transfer(struct spi_master *master)
{
 u32 cmd;
 struct mtk_spi *mdata = spi_master_get_devdata(master);

 cmd = readl(mdata->base + SPI_CMD_REG);
 if (mdata->state == MTK_SPI_IDLE)
  cmd |= SPI_CMD_ACT;
 else
  cmd |= SPI_CMD_RESUME;
 writel(cmd, mdata->base + SPI_CMD_REG);
}
