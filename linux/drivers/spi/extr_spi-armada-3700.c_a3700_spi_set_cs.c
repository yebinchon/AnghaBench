
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int chip_select; int master; } ;
struct a3700_spi {int dummy; } ;


 int a3700_spi_activate_cs (struct a3700_spi*,int ) ;
 int a3700_spi_deactivate_cs (struct a3700_spi*,int ) ;
 struct a3700_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void a3700_spi_set_cs(struct spi_device *spi, bool enable)
{
 struct a3700_spi *a3700_spi = spi_master_get_devdata(spi->master);

 if (!enable)
  a3700_spi_activate_cs(a3700_spi, spi->chip_select);
 else
  a3700_spi_deactivate_cs(a3700_spi, spi->chip_select);
}
