
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_spi_info {int pin_cs; } ;


 int gpio_set_value (int ,int) ;

__attribute__((used)) static void s3c24xx_spi_gpiocs(struct s3c2410_spi_info *spi, int cs, int pol)
{
 gpio_set_value(spi->pin_cs, pol);
}
