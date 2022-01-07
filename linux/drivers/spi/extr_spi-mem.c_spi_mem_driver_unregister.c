
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_mem_driver {int spidrv; } ;


 int spi_unregister_driver (int *) ;

void spi_mem_driver_unregister(struct spi_mem_driver *memdrv)
{
 spi_unregister_driver(&memdrv->spidrv);
}
