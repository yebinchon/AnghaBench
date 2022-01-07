
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int cs_gpio; } ;


 int gpio_free (int ) ;

__attribute__((used)) static void spi_st_cleanup(struct spi_device *spi)
{
 gpio_free(spi->cs_gpio);
}
