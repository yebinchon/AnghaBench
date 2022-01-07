
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int cs_gpio; } ;


 int gpio_free (int ) ;
 int kfree (scalar_t__) ;
 scalar_t__ spi_get_ctldata (struct spi_device*) ;

__attribute__((used)) static void spi_sirfsoc_cleanup(struct spi_device *spi)
{
 if (spi_get_ctldata(spi)) {
  gpio_free(spi->cs_gpio);
  kfree(spi_get_ctldata(spi));
 }
}
