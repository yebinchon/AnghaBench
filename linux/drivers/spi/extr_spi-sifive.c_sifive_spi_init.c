
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sifive_spi {int dummy; } ;


 int SIFIVE_SPI_DELAY0_CSSCK (int) ;
 int SIFIVE_SPI_DELAY0_SCKCS (int) ;
 int SIFIVE_SPI_DELAY1_INTERCS (int) ;
 int SIFIVE_SPI_DELAY1_INTERXFR (int ) ;
 int SIFIVE_SPI_REG_DELAY0 ;
 int SIFIVE_SPI_REG_DELAY1 ;
 int SIFIVE_SPI_REG_FCTRL ;
 int SIFIVE_SPI_REG_IE ;
 int SIFIVE_SPI_REG_RXMARK ;
 int SIFIVE_SPI_REG_TXMARK ;
 int sifive_spi_write (struct sifive_spi*,int ,int) ;

__attribute__((used)) static void sifive_spi_init(struct sifive_spi *spi)
{

 sifive_spi_write(spi, SIFIVE_SPI_REG_IE, 0);


 sifive_spi_write(spi, SIFIVE_SPI_REG_TXMARK, 1);
 sifive_spi_write(spi, SIFIVE_SPI_REG_RXMARK, 0);


 sifive_spi_write(spi, SIFIVE_SPI_REG_DELAY0,
    SIFIVE_SPI_DELAY0_CSSCK(1) |
    SIFIVE_SPI_DELAY0_SCKCS(1));
 sifive_spi_write(spi, SIFIVE_SPI_REG_DELAY1,
    SIFIVE_SPI_DELAY1_INTERCS(1) |
    SIFIVE_SPI_DELAY1_INTERXFR(0));


 sifive_spi_write(spi, SIFIVE_SPI_REG_FCTRL, 0);
}
