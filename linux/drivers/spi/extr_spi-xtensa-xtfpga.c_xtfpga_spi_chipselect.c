
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xtfpga_spi {scalar_t__ data_sz; } ;
struct spi_device {int master; } ;


 int WARN_ON (int) ;
 struct xtfpga_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void xtfpga_spi_chipselect(struct spi_device *spi, int is_on)
{
 struct xtfpga_spi *xspi = spi_master_get_devdata(spi->master);

 WARN_ON(xspi->data_sz != 0);
 xspi->data_sz = 0;
}
