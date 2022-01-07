
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int ili9320_remove (int ) ;
 int spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int vgg2432a4_remove(struct spi_device *spi)
{
 return ili9320_remove(spi_get_drvdata(spi));
}
