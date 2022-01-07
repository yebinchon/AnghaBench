
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame; int overrun; int parity; int brk; int rx; } ;
struct uart_port {unsigned short read_status_mask; int lock; TYPE_2__* state; TYPE_1__ icount; } ;
struct altera_uart {struct uart_port port; } ;
struct TYPE_4__ {int port; } ;


 int ALTERA_UART_RXDATA_REG ;
 unsigned short ALTERA_UART_STATUS_BRK_MSK ;
 unsigned short ALTERA_UART_STATUS_E_MSK ;
 unsigned short ALTERA_UART_STATUS_FE_MSK ;
 unsigned short ALTERA_UART_STATUS_PE_MSK ;
 int ALTERA_UART_STATUS_REG ;
 unsigned short ALTERA_UART_STATUS_ROE_MSK ;
 unsigned short ALTERA_UART_STATUS_RRDY_MSK ;
 unsigned char TTY_BREAK ;
 unsigned char TTY_FRAME ;
 unsigned char TTY_NORMAL ;
 unsigned char TTY_PARITY ;
 void* altera_uart_readl (struct uart_port*,int ) ;
 int altera_uart_writel (struct uart_port*,unsigned short,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (int *) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,unsigned char) ;
 int uart_insert_char (struct uart_port*,unsigned short,unsigned short,unsigned char,unsigned char) ;

__attribute__((used)) static void altera_uart_rx_chars(struct altera_uart *pp)
{
 struct uart_port *port = &pp->port;
 unsigned char ch, flag;
 unsigned short status;

 while ((status = altera_uart_readl(port, ALTERA_UART_STATUS_REG)) &
        ALTERA_UART_STATUS_RRDY_MSK) {
  ch = altera_uart_readl(port, ALTERA_UART_RXDATA_REG);
  flag = TTY_NORMAL;
  port->icount.rx++;

  if (status & ALTERA_UART_STATUS_E_MSK) {
   altera_uart_writel(port, status,
        ALTERA_UART_STATUS_REG);

   if (status & ALTERA_UART_STATUS_BRK_MSK) {
    port->icount.brk++;
    if (uart_handle_break(port))
     continue;
   } else if (status & ALTERA_UART_STATUS_PE_MSK) {
    port->icount.parity++;
   } else if (status & ALTERA_UART_STATUS_ROE_MSK) {
    port->icount.overrun++;
   } else if (status & ALTERA_UART_STATUS_FE_MSK) {
    port->icount.frame++;
   }

   status &= port->read_status_mask;

   if (status & ALTERA_UART_STATUS_BRK_MSK)
    flag = TTY_BREAK;
   else if (status & ALTERA_UART_STATUS_PE_MSK)
    flag = TTY_PARITY;
   else if (status & ALTERA_UART_STATUS_FE_MSK)
    flag = TTY_FRAME;
  }

  if (uart_handle_sysrq_char(port, ch))
   continue;
  uart_insert_char(port, status, ALTERA_UART_STATUS_ROE_MSK, ch,
     flag);
 }

 spin_unlock(&port->lock);
 tty_flip_buffer_push(&port->state->port);
 spin_lock(&port->lock);
}
