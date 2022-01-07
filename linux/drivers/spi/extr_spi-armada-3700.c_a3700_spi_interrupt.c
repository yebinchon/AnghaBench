
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_master {int dummy; } ;
struct a3700_spi {int wait_mask; int done; } ;
typedef int irqreturn_t ;


 int A3700_SPI_INT_MASK_REG ;
 int A3700_SPI_INT_STAT_REG ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int complete (int *) ;
 struct a3700_spi* spi_master_get_devdata (struct spi_master*) ;
 int spireg_read (struct a3700_spi*,int ) ;
 int spireg_write (struct a3700_spi*,int ,int) ;

__attribute__((used)) static irqreturn_t a3700_spi_interrupt(int irq, void *dev_id)
{
 struct spi_master *master = dev_id;
 struct a3700_spi *a3700_spi;
 u32 cause;

 a3700_spi = spi_master_get_devdata(master);


 cause = spireg_read(a3700_spi, A3700_SPI_INT_STAT_REG);

 if (!cause || !(a3700_spi->wait_mask & cause))
  return IRQ_NONE;


 spireg_write(a3700_spi, A3700_SPI_INT_MASK_REG, 0);
 spireg_write(a3700_spi, A3700_SPI_INT_STAT_REG, cause);


 complete(&a3700_spi->done);

 return IRQ_HANDLED;
}
