
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {scalar_t__ x_char; TYPE_2__ icount; TYPE_1__* state; } ;
struct efm32_uart_port {struct uart_port port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int UART_XMIT_SIZE ;
 int UARTn_STATUS ;
 int UARTn_STATUS_TXBL ;
 int UARTn_STATUS_TXC ;
 int UARTn_TXDATA ;
 scalar_t__ WAKEUP_CHARS ;
 int efm32_uart_read32 (struct efm32_uart_port*,int ) ;
 int efm32_uart_stop_tx (struct uart_port*) ;
 int efm32_uart_write32 (struct efm32_uart_port*,scalar_t__,int ) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 int uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static void efm32_uart_tx_chars(struct efm32_uart_port *efm_port)
{
 struct uart_port *port = &efm_port->port;
 struct circ_buf *xmit = &port->state->xmit;

 while (efm32_uart_read32(efm_port, UARTn_STATUS) &
   UARTn_STATUS_TXBL) {
  if (port->x_char) {
   port->icount.tx++;
   efm32_uart_write32(efm_port, port->x_char,
     UARTn_TXDATA);
   port->x_char = 0;
   continue;
  }
  if (!uart_circ_empty(xmit) && !uart_tx_stopped(port)) {
   port->icount.tx++;
   efm32_uart_write32(efm_port, xmit->buf[xmit->tail],
     UARTn_TXDATA);
   xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  } else
   break;
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);

 if (!port->x_char && uart_circ_empty(xmit) &&
   efm32_uart_read32(efm_port, UARTn_STATUS) &
    UARTn_STATUS_TXC)
  efm32_uart_stop_tx(port);
}
