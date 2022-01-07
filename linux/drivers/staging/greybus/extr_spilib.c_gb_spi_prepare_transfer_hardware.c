
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_master {int dummy; } ;
struct gb_spilib {int parent; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* prepare_transfer_hardware ) (int ) ;} ;


 struct gb_spilib* spi_master_get_devdata (struct spi_master*) ;
 int stub1 (int ) ;

__attribute__((used)) static int gb_spi_prepare_transfer_hardware(struct spi_master *master)
{
 struct gb_spilib *spi = spi_master_get_devdata(master);

 return spi->ops->prepare_transfer_hardware(spi->parent);
}
