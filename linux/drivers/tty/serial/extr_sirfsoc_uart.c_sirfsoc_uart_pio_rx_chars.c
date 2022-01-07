
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned int rx; } ;
struct uart_port {TYPE_3__ icount; TYPE_2__* state; } ;
struct tty_struct {int dummy; } ;
struct sirfsoc_uart_port {TYPE_1__* uart_reg; } ;
struct sirfsoc_register {int sirfsoc_rx_fifo_data; int sirfsoc_rx_fifo_status; } ;
struct sirfsoc_fifo_status {unsigned int (* ff_empty ) (struct uart_port*) ;} ;
struct TYPE_5__ {int port; } ;
struct TYPE_4__ {struct sirfsoc_fifo_status fifo_status; struct sirfsoc_register uart_reg; } ;


 unsigned int ENODEV ;
 unsigned int SIRFUART_DUMMY_READ ;
 int TTY_NORMAL ;
 unsigned int rd_regl (struct uart_port*,int ) ;
 unsigned int stub1 (struct uart_port*) ;
 struct sirfsoc_uart_port* to_sirfport (struct uart_port*) ;
 struct tty_struct* tty_port_tty_get (int *) ;
 int uart_handle_sysrq_char (struct uart_port*,unsigned int) ;
 int uart_insert_char (struct uart_port*,int ,int ,unsigned int,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static unsigned int
sirfsoc_uart_pio_rx_chars(struct uart_port *port, unsigned int max_rx_count)
{
 struct sirfsoc_uart_port *sirfport = to_sirfport(port);
 struct sirfsoc_register *ureg = &sirfport->uart_reg->uart_reg;
 struct sirfsoc_fifo_status *ufifo_st = &sirfport->uart_reg->fifo_status;
 unsigned int ch, rx_count = 0;
 struct tty_struct *tty;
 tty = tty_port_tty_get(&port->state->port);
 if (!tty)
  return -ENODEV;
 while (!(rd_regl(port, ureg->sirfsoc_rx_fifo_status) &
     ufifo_st->ff_empty(port))) {
  ch = rd_regl(port, ureg->sirfsoc_rx_fifo_data) |
   SIRFUART_DUMMY_READ;
  if (unlikely(uart_handle_sysrq_char(port, ch)))
   continue;
  uart_insert_char(port, 0, 0, ch, TTY_NORMAL);
  rx_count++;
  if (rx_count >= max_rx_count)
   break;
 }

 port->icount.rx += rx_count;

 return rx_count;
}
