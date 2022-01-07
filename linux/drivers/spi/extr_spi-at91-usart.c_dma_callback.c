
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct at91_usart_spi {int xfer_completion; scalar_t__ current_rx_remaining_bytes; } ;


 int IER ;
 int US_IR_RXRDY ;
 int at91_usart_spi_writel (struct at91_usart_spi*,int ,int ) ;
 int complete (int *) ;
 struct at91_usart_spi* spi_master_get_devdata (struct spi_controller*) ;

__attribute__((used)) static void dma_callback(void *data)
{
 struct spi_controller *ctlr = data;
 struct at91_usart_spi *aus = spi_master_get_devdata(ctlr);

 at91_usart_spi_writel(aus, IER, US_IR_RXRDY);
 aus->current_rx_remaining_bytes = 0;
 complete(&aus->xfer_completion);
}
