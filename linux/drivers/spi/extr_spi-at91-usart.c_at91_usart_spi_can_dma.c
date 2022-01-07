
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {scalar_t__ len; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;
struct at91_usart_spi {scalar_t__ use_dma; } ;


 scalar_t__ US_DMA_MIN_BYTES ;
 struct at91_usart_spi* spi_master_get_devdata (struct spi_controller*) ;

__attribute__((used)) static bool at91_usart_spi_can_dma(struct spi_controller *ctrl,
       struct spi_device *spi,
       struct spi_transfer *xfer)
{
 struct at91_usart_spi *aus = spi_master_get_devdata(ctrl);

 return aus->use_dma && xfer->len >= US_DMA_MIN_BYTES;
}
