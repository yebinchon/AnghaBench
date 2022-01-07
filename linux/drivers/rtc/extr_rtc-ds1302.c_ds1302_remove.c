
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int spi_set_drvdata (struct spi_device*,int *) ;

__attribute__((used)) static int ds1302_remove(struct spi_device *spi)
{
 spi_set_drvdata(spi, ((void*)0));
 return 0;
}
