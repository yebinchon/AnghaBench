
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; int cs_gpio; } ;


 int SPI_CS_HIGH ;
 int gpio_direction_output (int ,int) ;

__attribute__((used)) static void pic32_spi_cleanup(struct spi_device *spi)
{

 gpio_direction_output(spi->cs_gpio, !(spi->mode & SPI_CS_HIGH));
}
