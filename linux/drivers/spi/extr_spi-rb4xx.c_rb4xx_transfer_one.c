
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct spi_transfer {int len; scalar_t__ tx_nbits; int * rx_buf; int * tx_buf; } ;
struct spi_master {int dummy; } ;
struct spi_device {int chip_select; } ;
struct rb4xx_spi {int dummy; } ;


 int AR71XX_SPI_IOC_CS0 ;
 int AR71XX_SPI_IOC_CS1 ;
 int AR71XX_SPI_REG_RDS ;
 scalar_t__ SPI_NBITS_DUAL ;
 int do_spi_byte (struct rb4xx_spi*,int ,int const) ;
 int do_spi_byte_two (struct rb4xx_spi*,int ,int const) ;
 int rb4xx_read (struct rb4xx_spi*,int ) ;
 int spi_finalize_current_transfer (struct spi_master*) ;
 struct rb4xx_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int rb4xx_transfer_one(struct spi_master *master,
         struct spi_device *spi, struct spi_transfer *t)
{
 struct rb4xx_spi *rbspi = spi_master_get_devdata(master);
 int i;
 u32 spi_ioc;
 u8 *rx_buf;
 const u8 *tx_buf;







 if (spi->chip_select == 2)

  spi_ioc = AR71XX_SPI_IOC_CS0;
 else

  spi_ioc = AR71XX_SPI_IOC_CS1;

 tx_buf = t->tx_buf;
 rx_buf = t->rx_buf;
 for (i = 0; i < t->len; ++i) {
  if (t->tx_nbits == SPI_NBITS_DUAL)

   do_spi_byte_two(rbspi, spi_ioc, tx_buf[i]);
  else
   do_spi_byte(rbspi, spi_ioc, tx_buf[i]);
  if (!rx_buf)
   continue;
  rx_buf[i] = rb4xx_read(rbspi, AR71XX_SPI_REG_RDS);
 }
 spi_finalize_current_transfer(master);

 return 0;
}
