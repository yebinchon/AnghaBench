
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {scalar_t__ membase; TYPE_1__* state; } ;
struct TYPE_2__ {int xmit; } ;


 scalar_t__ CDNS_UART_CR ;
 unsigned int CDNS_UART_CR_TX_DIS ;
 unsigned int CDNS_UART_CR_TX_EN ;
 scalar_t__ CDNS_UART_IER ;
 scalar_t__ CDNS_UART_ISR ;
 unsigned int CDNS_UART_IXR_TXEMPTY ;
 int cdns_uart_handle_tx (struct uart_port*) ;
 unsigned int readl (scalar_t__) ;
 scalar_t__ uart_circ_empty (int *) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void cdns_uart_start_tx(struct uart_port *port)
{
 unsigned int status;

 if (uart_tx_stopped(port))
  return;





 status = readl(port->membase + CDNS_UART_CR);
 status &= ~CDNS_UART_CR_TX_DIS;
 status |= CDNS_UART_CR_TX_EN;
 writel(status, port->membase + CDNS_UART_CR);

 if (uart_circ_empty(&port->state->xmit))
  return;

 cdns_uart_handle_tx(port);

 writel(CDNS_UART_IXR_TXEMPTY, port->membase + CDNS_UART_ISR);

 writel(CDNS_UART_IXR_TXEMPTY, port->membase + CDNS_UART_IER);
}
