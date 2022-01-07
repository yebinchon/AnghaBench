
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_mem {TYPE_2__* spi; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 char const* dev_name (int ) ;

__attribute__((used)) static const char *atmel_qspi_get_name(struct spi_mem *spimem)
{
 return dev_name(spimem->spi->dev.parent);
}
