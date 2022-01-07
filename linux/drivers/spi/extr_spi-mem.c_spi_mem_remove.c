
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_mem_driver {int (* remove ) (struct spi_mem*) ;} ;
struct spi_mem {int dummy; } ;
struct TYPE_2__ {int driver; } ;
struct spi_device {TYPE_1__ dev; } ;


 struct spi_mem* spi_get_drvdata (struct spi_device*) ;
 int stub1 (struct spi_mem*) ;
 struct spi_mem_driver* to_spi_mem_drv (int ) ;

__attribute__((used)) static int spi_mem_remove(struct spi_device *spi)
{
 struct spi_mem_driver *memdrv = to_spi_mem_drv(spi->dev.driver);
 struct spi_mem *mem = spi_get_drvdata(spi);

 if (memdrv->remove)
  return memdrv->remove(mem);

 return 0;
}
