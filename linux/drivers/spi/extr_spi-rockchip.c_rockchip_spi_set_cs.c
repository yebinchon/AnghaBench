
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct spi_device {size_t chip_select; struct spi_master* master; } ;
struct rockchip_spi {int* cs_asserted; int dev; scalar_t__ regs; } ;


 int BIT (size_t) ;
 int ROCKCHIP_SPI_CLR_BITS (scalar_t__,int ) ;
 scalar_t__ ROCKCHIP_SPI_SER ;
 int ROCKCHIP_SPI_SET_BITS (scalar_t__,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 struct rockchip_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static void rockchip_spi_set_cs(struct spi_device *spi, bool enable)
{
 struct spi_master *master = spi->master;
 struct rockchip_spi *rs = spi_master_get_devdata(master);
 bool cs_asserted = !enable;


 if (cs_asserted == rs->cs_asserted[spi->chip_select])
  return;

 if (cs_asserted) {

  pm_runtime_get_sync(rs->dev);

  ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER,
          BIT(spi->chip_select));
 } else {
  ROCKCHIP_SPI_CLR_BITS(rs->regs + ROCKCHIP_SPI_SER,
          BIT(spi->chip_select));


  pm_runtime_put(rs->dev);
 }

 rs->cs_asserted[spi->chip_select] = cs_asserted;
}
