
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; int max_speed_hz; int chip_select; int bits_per_word; int dev; int master; } ;


 int MCFQSPI_BUSCLK ;
 int SPI_CS_HIGH ;
 int dev_dbg (int *,char*,int ,int ,int) ;
 int mcfqspi_cs_deselect (int ,int ,int) ;
 int mcfqspi_qmr_baud (int ) ;
 int spi_master_get_devdata (int ) ;

__attribute__((used)) static int mcfqspi_setup(struct spi_device *spi)
{
 mcfqspi_cs_deselect(spi_master_get_devdata(spi->master),
       spi->chip_select, spi->mode & SPI_CS_HIGH);

 dev_dbg(&spi->dev,
   "bits per word %d, chip select %d, speed %d KHz\n",
   spi->bits_per_word, spi->chip_select,
   (MCFQSPI_BUSCLK / mcfqspi_qmr_baud(spi->max_speed_hz))
   / 1000);

 return 0;
}
