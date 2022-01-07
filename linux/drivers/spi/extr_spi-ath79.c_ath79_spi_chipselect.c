
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {int mode; int chip_select; } ;
struct ath79_spi {int ioc_base; } ;


 int AR71XX_SPI_IOC_CS (int ) ;
 int AR71XX_SPI_REG_IOC ;
 int SPI_CS_HIGH ;
 int ath79_spi_wr (struct ath79_spi*,int ,int ) ;
 struct ath79_spi* ath79_spidev_to_sp (struct spi_device*) ;

__attribute__((used)) static void ath79_spi_chipselect(struct spi_device *spi, int is_active)
{
 struct ath79_spi *sp = ath79_spidev_to_sp(spi);
 int cs_high = (spi->mode & SPI_CS_HIGH) ? is_active : !is_active;
 u32 cs_bit = AR71XX_SPI_IOC_CS(spi->chip_select);

 if (cs_high)
  sp->ioc_base |= cs_bit;
 else
  sp->ioc_base &= ~cs_bit;

 ath79_spi_wr(sp, AR71XX_SPI_REG_IOC, sp->ioc_base);
}
