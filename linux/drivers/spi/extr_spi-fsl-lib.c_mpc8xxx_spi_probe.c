
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct spi_master {int mode_bits; int num_chipselect; int bus_num; TYPE_1__ dev; } ;
struct resource {int dummy; } ;
struct mpc8xxx_spi {unsigned int irq; int done; scalar_t__ tx_shift; scalar_t__ rx_shift; int spibrg; int flags; int get_tx; int get_rx; struct device* dev; } ;
struct fsl_spi_platform_data {int max_chipselect; int bus_num; int sysclk; int flags; } ;
struct device {int of_node; } ;


 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_LOOP ;
 int SPI_LSB_FIRST ;
 struct spi_master* dev_get_drvdata (struct device*) ;
 struct fsl_spi_platform_data* dev_get_platdata (struct device*) ;
 int init_completion (int *) ;
 int mpc8xxx_spi_rx_buf_u8 ;
 int mpc8xxx_spi_tx_buf_u8 ;
 struct mpc8xxx_spi* spi_master_get_devdata (struct spi_master*) ;

void mpc8xxx_spi_probe(struct device *dev, struct resource *mem,
   unsigned int irq)
{
 struct fsl_spi_platform_data *pdata = dev_get_platdata(dev);
 struct spi_master *master;
 struct mpc8xxx_spi *mpc8xxx_spi;

 master = dev_get_drvdata(dev);


 master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH
   | SPI_LSB_FIRST | SPI_LOOP;

 master->dev.of_node = dev->of_node;

 mpc8xxx_spi = spi_master_get_devdata(master);
 mpc8xxx_spi->dev = dev;
 mpc8xxx_spi->get_rx = mpc8xxx_spi_rx_buf_u8;
 mpc8xxx_spi->get_tx = mpc8xxx_spi_tx_buf_u8;
 mpc8xxx_spi->flags = pdata->flags;
 mpc8xxx_spi->spibrg = pdata->sysclk;
 mpc8xxx_spi->irq = irq;

 mpc8xxx_spi->rx_shift = 0;
 mpc8xxx_spi->tx_shift = 0;

 master->bus_num = pdata->bus_num;
 master->num_chipselect = pdata->max_chipselect;

 init_completion(&mpc8xxx_spi->done);
}
