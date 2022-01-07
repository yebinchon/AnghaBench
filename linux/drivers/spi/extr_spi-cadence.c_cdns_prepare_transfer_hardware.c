
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct cdns_spi {int dummy; } ;


 int CDNS_SPI_ER ;
 int CDNS_SPI_ER_ENABLE ;
 int cdns_spi_write (struct cdns_spi*,int ,int ) ;
 struct cdns_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int cdns_prepare_transfer_hardware(struct spi_master *master)
{
 struct cdns_spi *xspi = spi_master_get_devdata(master);

 cdns_spi_write(xspi, CDNS_SPI_ER, CDNS_SPI_ER_ENABLE);

 return 0;
}
