
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_usart_spi {int xfer_completion; } ;


 int US_DMA_TIMEOUT ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static unsigned long at91_usart_spi_dma_timeout(struct at91_usart_spi *aus)
{
 return wait_for_completion_timeout(&aus->xfer_completion,
        US_DMA_TIMEOUT);
}
