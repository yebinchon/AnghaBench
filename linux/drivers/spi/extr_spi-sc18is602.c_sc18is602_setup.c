
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int chip_select; int master; } ;
struct sc18is602 {scalar_t__ id; } ;


 int ENXIO ;
 scalar_t__ sc18is602 ;
 struct sc18is602* spi_master_get_devdata (int ) ;

__attribute__((used)) static int sc18is602_setup(struct spi_device *spi)
{
 struct sc18is602 *hw = spi_master_get_devdata(spi->master);


 if (hw->id == sc18is602 && spi->chip_select == 2)
  return -ENXIO;

 return 0;
}
