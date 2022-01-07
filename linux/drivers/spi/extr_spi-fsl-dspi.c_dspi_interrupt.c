
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_dspi {int waitflags; int waitq; int regmap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SPI_SR ;
 int SPI_SR_EOQF ;
 int SPI_SR_TCFQF ;
 scalar_t__ dspi_rxtx (struct fsl_dspi*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t dspi_interrupt(int irq, void *dev_id)
{
 struct fsl_dspi *dspi = (struct fsl_dspi *)dev_id;
 u32 spi_sr;

 regmap_read(dspi->regmap, SPI_SR, &spi_sr);
 regmap_write(dspi->regmap, SPI_SR, spi_sr);

 if (!(spi_sr & (SPI_SR_EOQF | SPI_SR_TCFQF)))
  return IRQ_NONE;

 if (dspi_rxtx(dspi) == 0) {
  dspi->waitflags = 1;
  wake_up_interruptible(&dspi->waitq);
 }

 return IRQ_HANDLED;
}
