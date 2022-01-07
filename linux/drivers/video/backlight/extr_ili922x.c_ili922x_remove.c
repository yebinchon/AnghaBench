
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int ili922x_poweroff (struct spi_device*) ;

__attribute__((used)) static int ili922x_remove(struct spi_device *spi)
{
 ili922x_poweroff(spi);
 return 0;
}
