
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 size_t ROCKCHIP_SPI_MAX_TRANLEN ;

__attribute__((used)) static size_t rockchip_spi_max_transfer_size(struct spi_device *spi)
{
 return ROCKCHIP_SPI_MAX_TRANLEN;
}
