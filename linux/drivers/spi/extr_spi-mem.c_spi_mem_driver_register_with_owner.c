
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shutdown; int remove; int probe; } ;
struct spi_mem_driver {TYPE_1__ spidrv; } ;
struct module {int dummy; } ;


 int __spi_register_driver (struct module*,TYPE_1__*) ;
 int spi_mem_probe ;
 int spi_mem_remove ;
 int spi_mem_shutdown ;

int spi_mem_driver_register_with_owner(struct spi_mem_driver *memdrv,
           struct module *owner)
{
 memdrv->spidrv.probe = spi_mem_probe;
 memdrv->spidrv.remove = spi_mem_remove;
 memdrv->spidrv.shutdown = spi_mem_shutdown;

 return __spi_register_driver(owner, &memdrv->spidrv);
}
