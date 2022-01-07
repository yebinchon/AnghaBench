
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dev; } ;
struct s3c64xx_spi_driver_data {scalar_t__ regs; struct spi_master* master; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ S3C64XX_SPI_PENDING_CLR ;
 unsigned int S3C64XX_SPI_PND_RX_OVERRUN_CLR ;
 unsigned int S3C64XX_SPI_PND_RX_UNDERRUN_CLR ;
 unsigned int S3C64XX_SPI_PND_TX_OVERRUN_CLR ;
 unsigned int S3C64XX_SPI_PND_TX_UNDERRUN_CLR ;
 scalar_t__ S3C64XX_SPI_STATUS ;
 unsigned int S3C64XX_SPI_ST_RX_OVERRUN_ERR ;
 unsigned int S3C64XX_SPI_ST_RX_UNDERRUN_ERR ;
 unsigned int S3C64XX_SPI_ST_TX_OVERRUN_ERR ;
 unsigned int S3C64XX_SPI_ST_TX_UNDERRUN_ERR ;
 int dev_err (int *,char*) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static irqreturn_t s3c64xx_spi_irq(int irq, void *data)
{
 struct s3c64xx_spi_driver_data *sdd = data;
 struct spi_master *spi = sdd->master;
 unsigned int val, clr = 0;

 val = readl(sdd->regs + S3C64XX_SPI_STATUS);

 if (val & S3C64XX_SPI_ST_RX_OVERRUN_ERR) {
  clr = S3C64XX_SPI_PND_RX_OVERRUN_CLR;
  dev_err(&spi->dev, "RX overrun\n");
 }
 if (val & S3C64XX_SPI_ST_RX_UNDERRUN_ERR) {
  clr |= S3C64XX_SPI_PND_RX_UNDERRUN_CLR;
  dev_err(&spi->dev, "RX underrun\n");
 }
 if (val & S3C64XX_SPI_ST_TX_OVERRUN_ERR) {
  clr |= S3C64XX_SPI_PND_TX_OVERRUN_CLR;
  dev_err(&spi->dev, "TX overrun\n");
 }
 if (val & S3C64XX_SPI_ST_TX_UNDERRUN_ERR) {
  clr |= S3C64XX_SPI_PND_TX_UNDERRUN_CLR;
  dev_err(&spi->dev, "TX underrun\n");
 }


 writel(clr, sdd->regs + S3C64XX_SPI_PENDING_CLR);
 writel(0, sdd->regs + S3C64XX_SPI_PENDING_CLR);

 return IRQ_HANDLED;
}
