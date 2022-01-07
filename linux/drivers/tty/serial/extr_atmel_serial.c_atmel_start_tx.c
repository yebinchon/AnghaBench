
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct atmel_uart_port {int tx_done_mask; int tx_stopped; } ;


 int ATMEL_PDC_PTCR ;
 int ATMEL_PDC_PTSR ;
 int ATMEL_PDC_TXTEN ;
 int ATMEL_US_CR ;
 int ATMEL_US_IER ;
 int ATMEL_US_TXEN ;
 int atmel_stop_rx (struct uart_port*) ;
 scalar_t__ atmel_uart_is_half_duplex (struct uart_port*) ;
 int atmel_uart_readl (struct uart_port*,int ) ;
 int atmel_uart_writel (struct uart_port*,int ,int) ;
 scalar_t__ atmel_use_dma_tx (struct uart_port*) ;
 scalar_t__ atmel_use_pdc_tx (struct uart_port*) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void atmel_start_tx(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);

 if (atmel_use_pdc_tx(port) && (atmel_uart_readl(port, ATMEL_PDC_PTSR)
           & ATMEL_PDC_TXTEN))


  return;

 if (atmel_use_pdc_tx(port) || atmel_use_dma_tx(port))
  if (atmel_uart_is_half_duplex(port))
   atmel_stop_rx(port);

 if (atmel_use_pdc_tx(port))

  atmel_uart_writel(port, ATMEL_PDC_PTCR, ATMEL_PDC_TXTEN);


 atmel_uart_writel(port, ATMEL_US_IER, atmel_port->tx_done_mask);


 atmel_uart_writel(port, ATMEL_US_CR, ATMEL_US_TXEN);
 atmel_port->tx_stopped = 0;
}
