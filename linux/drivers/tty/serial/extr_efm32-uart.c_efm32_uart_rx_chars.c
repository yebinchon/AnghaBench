
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int frame; int parity; int brk; int rx; } ;
struct uart_port {int read_status_mask; int ignore_status_mask; TYPE_2__* state; TYPE_1__ icount; } ;
struct efm32_uart_port {struct uart_port port; } ;
struct TYPE_4__ {int port; } ;


 int SW_UARTn_RXDATAX_BERR ;
 int TTY_BREAK ;
 int TTY_FRAME ;
 int TTY_PARITY ;
 int UARTn_RXDATAX ;
 int UARTn_RXDATAX_FERR ;
 int UARTn_RXDATAX_PERR ;
 int UARTn_RXDATAX_RXDATA__MASK ;
 int UARTn_STATUS ;
 int UARTn_STATUS_RXDATAV ;
 int efm32_uart_read32 (struct efm32_uart_port*,int ) ;
 int tty_insert_flip_char (int *,int,int) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,int) ;

__attribute__((used)) static void efm32_uart_rx_chars(struct efm32_uart_port *efm_port)
{
 struct uart_port *port = &efm_port->port;

 while (efm32_uart_read32(efm_port, UARTn_STATUS) &
   UARTn_STATUS_RXDATAV) {
  u32 rxdata = efm32_uart_read32(efm_port, UARTn_RXDATAX);
  int flag = 0;







  rxdata &= ~SW_UARTn_RXDATAX_BERR;

  port->icount.rx++;

  if ((rxdata & UARTn_RXDATAX_FERR) &&
    !(rxdata & UARTn_RXDATAX_RXDATA__MASK)) {
   rxdata |= SW_UARTn_RXDATAX_BERR;
   port->icount.brk++;
   if (uart_handle_break(port))
    continue;
  } else if (rxdata & UARTn_RXDATAX_PERR)
   port->icount.parity++;
  else if (rxdata & UARTn_RXDATAX_FERR)
   port->icount.frame++;

  rxdata &= port->read_status_mask;

  if (rxdata & SW_UARTn_RXDATAX_BERR)
   flag = TTY_BREAK;
  else if (rxdata & UARTn_RXDATAX_PERR)
   flag = TTY_PARITY;
  else if (rxdata & UARTn_RXDATAX_FERR)
   flag = TTY_FRAME;
  else if (uart_handle_sysrq_char(port,
     rxdata & UARTn_RXDATAX_RXDATA__MASK))
   continue;

  if ((rxdata & port->ignore_status_mask) == 0)
   tty_insert_flip_char(&port->state->port,
     rxdata & UARTn_RXDATAX_RXDATA__MASK, flag);
 }
}
