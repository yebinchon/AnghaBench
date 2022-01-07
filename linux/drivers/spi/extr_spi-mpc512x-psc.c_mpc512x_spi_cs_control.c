
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int cs_gpio; } ;


 int gpio_set_value (int ,int) ;

__attribute__((used)) static void mpc512x_spi_cs_control(struct spi_device *spi, bool onoff)
{
 gpio_set_value(spi->cs_gpio, onoff);
}
