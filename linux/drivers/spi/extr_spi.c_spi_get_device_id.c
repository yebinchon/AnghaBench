
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_driver {int id_table; } ;
struct spi_device_id {int dummy; } ;
struct TYPE_2__ {int driver; } ;
struct spi_device {TYPE_1__ dev; } ;


 struct spi_device_id const* spi_match_id (int ,struct spi_device const*) ;
 struct spi_driver* to_spi_driver (int ) ;

const struct spi_device_id *spi_get_device_id(const struct spi_device *sdev)
{
 const struct spi_driver *sdrv = to_spi_driver(sdev->dev.driver);

 return spi_match_id(sdrv->id_table, sdev);
}
