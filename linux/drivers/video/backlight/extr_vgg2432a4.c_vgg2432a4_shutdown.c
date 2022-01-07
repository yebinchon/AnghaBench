
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int ili9320_shutdown (int ) ;
 int spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static void vgg2432a4_shutdown(struct spi_device *spi)
{
 ili9320_shutdown(spi_get_drvdata(spi));
}
