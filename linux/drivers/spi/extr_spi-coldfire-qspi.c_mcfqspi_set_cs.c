
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; int chip_select; int master; } ;
struct mcfqspi {int dummy; } ;


 int SPI_CS_HIGH ;
 int mcfqspi_cs_deselect (struct mcfqspi*,int ,int) ;
 int mcfqspi_cs_select (struct mcfqspi*,int ,int) ;
 struct mcfqspi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void mcfqspi_set_cs(struct spi_device *spi, bool enable)
{
 struct mcfqspi *mcfqspi = spi_master_get_devdata(spi->master);
 bool cs_high = spi->mode & SPI_CS_HIGH;

 if (enable)
  mcfqspi_cs_select(mcfqspi, spi->chip_select, cs_high);
 else
  mcfqspi_cs_deselect(mcfqspi, spi->chip_select, cs_high);
}
