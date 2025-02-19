
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int dummy; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;
struct rspi_data {int dummy; } ;


 int __rspi_can_dma (struct rspi_data*,struct spi_transfer*) ;
 struct rspi_data* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static bool rspi_can_dma(struct spi_controller *ctlr, struct spi_device *spi,
    struct spi_transfer *xfer)
{
 struct rspi_data *rspi = spi_controller_get_devdata(ctlr);

 return __rspi_can_dma(rspi, xfer);
}
