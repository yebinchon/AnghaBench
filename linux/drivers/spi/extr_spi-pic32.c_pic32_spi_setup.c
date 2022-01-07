
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; int cs_gpio; int dev; int max_speed_hz; } ;


 int EINVAL ;
 int SPI_CS_HIGH ;
 int dev_err (int *,char*) ;
 int gpio_direction_output (int ,int) ;
 int gpio_is_valid (int ) ;

__attribute__((used)) static int pic32_spi_setup(struct spi_device *spi)
{
 if (!spi->max_speed_hz) {
  dev_err(&spi->dev, "No max speed HZ parameter\n");
  return -EINVAL;
 }
 if (!gpio_is_valid(spi->cs_gpio))
  return -EINVAL;

 gpio_direction_output(spi->cs_gpio, !(spi->mode & SPI_CS_HIGH));

 return 0;
}
