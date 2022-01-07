
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_master {int dummy; } ;
struct bcm63xx_spi {int done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SPI_INTR_CLEAR_ALL ;
 int SPI_INTR_CMD_DONE ;
 int SPI_INT_MASK ;
 int SPI_INT_STATUS ;
 int bcm_spi_readb (struct bcm63xx_spi*,int ) ;
 int bcm_spi_writeb (struct bcm63xx_spi*,int ,int ) ;
 int complete (int *) ;
 struct bcm63xx_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static irqreturn_t bcm63xx_spi_interrupt(int irq, void *dev_id)
{
 struct spi_master *master = (struct spi_master *)dev_id;
 struct bcm63xx_spi *bs = spi_master_get_devdata(master);
 u8 intr;


 intr = bcm_spi_readb(bs, SPI_INT_STATUS);
 bcm_spi_writeb(bs, SPI_INTR_CLEAR_ALL, SPI_INT_STATUS);
 bcm_spi_writeb(bs, 0, SPI_INT_MASK);


 if (intr & SPI_INTR_CMD_DONE)
  complete(&bs->done);

 return IRQ_HANDLED;
}
