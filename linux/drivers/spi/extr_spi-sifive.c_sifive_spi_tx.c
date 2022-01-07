
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sifive_spi {int dummy; } ;


 int SIFIVE_SPI_REG_TXDATA ;
 int const SIFIVE_SPI_TXDATA_DATA_MASK ;
 int SIFIVE_SPI_TXDATA_FULL ;
 int WARN_ON_ONCE (int) ;
 int sifive_spi_read (struct sifive_spi*,int ) ;
 int sifive_spi_write (struct sifive_spi*,int ,int const) ;

__attribute__((used)) static void sifive_spi_tx(struct sifive_spi *spi, const u8 *tx_ptr)
{
 WARN_ON_ONCE((sifive_spi_read(spi, SIFIVE_SPI_REG_TXDATA)
    & SIFIVE_SPI_TXDATA_FULL) != 0);
 sifive_spi_write(spi, SIFIVE_SPI_REG_TXDATA,
    *tx_ptr & SIFIVE_SPI_TXDATA_DATA_MASK);
}
