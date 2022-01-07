
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int dev_err (int *,char*) ;
 int ili9320_probe_spi (struct spi_device*,int *) ;
 int vgg2432a4_client ;

__attribute__((used)) static int vgg2432a4_probe(struct spi_device *spi)
{
 int ret;

 ret = ili9320_probe_spi(spi, &vgg2432a4_client);
 if (ret != 0) {
  dev_err(&spi->dev, "failed to initialise ili9320\n");
  return ret;
 }

 return 0;
}
