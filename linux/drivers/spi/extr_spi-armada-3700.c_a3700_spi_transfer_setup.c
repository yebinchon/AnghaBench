
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; int rx_buf; int tx_buf; int speed_hz; } ;
struct spi_device {int master; } ;
struct a3700_spi {int buf_len; int rx_buf; int tx_buf; } ;


 int a3700_spi_bytelen_set (struct a3700_spi*,int) ;
 int a3700_spi_clock_set (struct a3700_spi*,int ) ;
 struct a3700_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void a3700_spi_transfer_setup(struct spi_device *spi,
         struct spi_transfer *xfer)
{
 struct a3700_spi *a3700_spi;

 a3700_spi = spi_master_get_devdata(spi->master);

 a3700_spi_clock_set(a3700_spi, xfer->speed_hz);




 a3700_spi_bytelen_set(a3700_spi, 4);


 a3700_spi->tx_buf = xfer->tx_buf;
 a3700_spi->rx_buf = xfer->rx_buf;
 a3700_spi->buf_len = xfer->len;
}
