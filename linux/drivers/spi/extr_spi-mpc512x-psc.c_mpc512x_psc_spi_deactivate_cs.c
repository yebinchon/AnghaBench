
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; int cs_gpio; int master; } ;
struct mpc512x_psc_spi {int (* cs_control ) (struct spi_device*,int) ;} ;


 int SPI_CS_HIGH ;
 scalar_t__ gpio_is_valid (int ) ;
 struct mpc512x_psc_spi* spi_master_get_devdata (int ) ;
 int stub1 (struct spi_device*,int) ;

__attribute__((used)) static void mpc512x_psc_spi_deactivate_cs(struct spi_device *spi)
{
 struct mpc512x_psc_spi *mps = spi_master_get_devdata(spi->master);

 if (mps->cs_control && gpio_is_valid(spi->cs_gpio))
  mps->cs_control(spi, (spi->mode & SPI_CS_HIGH) ? 0 : 1);

}
