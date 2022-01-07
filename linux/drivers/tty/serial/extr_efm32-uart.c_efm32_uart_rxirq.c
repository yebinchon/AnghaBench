
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int overrun; } ;
struct uart_port {int lock; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct efm32_uart_port {struct uart_port port; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {struct tty_port port; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int TTY_OVERRUN ;
 int UARTn_IF ;
 int UARTn_IFC ;
 int UARTn_IF_RXDATAV ;
 int UARTn_IF_RXOF ;
 int efm32_uart_read32 (struct efm32_uart_port*,int ) ;
 int efm32_uart_rx_chars (struct efm32_uart_port*) ;
 int efm32_uart_write32 (struct efm32_uart_port*,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_char (struct tty_port*,int ,int ) ;

__attribute__((used)) static irqreturn_t efm32_uart_rxirq(int irq, void *data)
{
 struct efm32_uart_port *efm_port = data;
 u32 irqflag = efm32_uart_read32(efm_port, UARTn_IF);
 int handled = IRQ_NONE;
 struct uart_port *port = &efm_port->port;
 struct tty_port *tport = &port->state->port;

 spin_lock(&port->lock);

 if (irqflag & UARTn_IF_RXDATAV) {
  efm32_uart_write32(efm_port, UARTn_IF_RXDATAV, UARTn_IFC);
  efm32_uart_rx_chars(efm_port);

  handled = IRQ_HANDLED;
 }

 if (irqflag & UARTn_IF_RXOF) {
  efm32_uart_write32(efm_port, UARTn_IF_RXOF, UARTn_IFC);
  port->icount.overrun++;
  tty_insert_flip_char(tport, 0, TTY_OVERRUN);

  handled = IRQ_HANDLED;
 }

 spin_unlock(&port->lock);

 tty_flip_buffer_push(tport);

 return handled;
}
