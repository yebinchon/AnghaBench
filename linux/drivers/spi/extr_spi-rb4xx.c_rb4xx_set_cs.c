
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int master; } ;
struct rb4xx_spi {int dummy; } ;


 int AR71XX_SPI_IOC_CS0 ;
 int AR71XX_SPI_IOC_CS1 ;
 int AR71XX_SPI_REG_IOC ;
 int rb4xx_write (struct rb4xx_spi*,int ,int) ;
 struct rb4xx_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void rb4xx_set_cs(struct spi_device *spi, bool enable)
{
 struct rb4xx_spi *rbspi = spi_master_get_devdata(spi->master);






 if (enable)
  rb4xx_write(rbspi, AR71XX_SPI_REG_IOC,
       AR71XX_SPI_IOC_CS0 | AR71XX_SPI_IOC_CS1);
}
