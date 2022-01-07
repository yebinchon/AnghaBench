
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int chip_select; TYPE_1__* controller; int dev; } ;
struct chip_data {int dummy; } ;
struct TYPE_2__ {int bus_num; } ;


 int dev_dbg (int *,char*,int ,int ) ;
 int kfree (struct chip_data*) ;
 struct chip_data* spi_get_ctldata (struct spi_device*) ;

__attribute__((used)) static void dspi_cleanup(struct spi_device *spi)
{
 struct chip_data *chip = spi_get_ctldata((struct spi_device *)spi);

 dev_dbg(&spi->dev, "spi_device %u.%u cleanup\n",
  spi->controller->bus_num, spi->chip_select);

 kfree(chip);
}
