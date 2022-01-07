
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; int rx_buf; int tx_buf; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct cdns_spi {int tx_bytes; int rx_bytes; int rxbuf; int txbuf; } ;


 int CDNS_SPI_IER ;
 int CDNS_SPI_IXR_DEFAULT ;
 int cdns_spi_fill_tx_fifo (struct cdns_spi*) ;
 int cdns_spi_setup_transfer (struct spi_device*,struct spi_transfer*) ;
 int cdns_spi_write (struct cdns_spi*,int ,int ) ;
 struct cdns_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int cdns_transfer_one(struct spi_master *master,
        struct spi_device *spi,
        struct spi_transfer *transfer)
{
 struct cdns_spi *xspi = spi_master_get_devdata(master);

 xspi->txbuf = transfer->tx_buf;
 xspi->rxbuf = transfer->rx_buf;
 xspi->tx_bytes = transfer->len;
 xspi->rx_bytes = transfer->len;

 cdns_spi_setup_transfer(spi, transfer);

 cdns_spi_fill_tx_fifo(xspi);

 cdns_spi_write(xspi, CDNS_SPI_IER, CDNS_SPI_IXR_DEFAULT);
 return transfer->len;
}
