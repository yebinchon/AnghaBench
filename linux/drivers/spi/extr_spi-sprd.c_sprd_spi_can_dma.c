
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enable; } ;
struct sprd_spi {TYPE_1__ dma; } ;
struct spi_transfer {scalar_t__ len; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;


 scalar_t__ SPRD_SPI_FIFO_SIZE ;
 struct sprd_spi* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static bool sprd_spi_can_dma(struct spi_controller *sctlr,
        struct spi_device *spi, struct spi_transfer *t)
{
 struct sprd_spi *ss = spi_controller_get_devdata(sctlr);

 return ss->dma.enable && (t->len > SPRD_SPI_FIFO_SIZE);
}
