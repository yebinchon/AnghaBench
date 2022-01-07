
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int overrun; } ;
struct uart_port {int lock; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {struct tty_port port; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int TTY_OVERRUN ;
 int UARTn_INT ;
 int UARTn_INT_RX_OVERRUN ;
 int UARTn_INT_TX_OVERRUN ;
 int mps2_uart_read8 (struct uart_port*,int ) ;
 int mps2_uart_write8 (struct uart_port*,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_char (struct tty_port*,int ,int ) ;

__attribute__((used)) static irqreturn_t mps2_uart_oerrirq(int irq, void *data)
{
 irqreturn_t handled = IRQ_NONE;
 struct uart_port *port = data;
 u8 irqflag = mps2_uart_read8(port, UARTn_INT);

 spin_lock(&port->lock);

 if (irqflag & UARTn_INT_RX_OVERRUN) {
  struct tty_port *tport = &port->state->port;

  mps2_uart_write8(port, UARTn_INT_RX_OVERRUN, UARTn_INT);
  port->icount.overrun++;
  tty_insert_flip_char(tport, 0, TTY_OVERRUN);
  tty_flip_buffer_push(tport);
  handled = IRQ_HANDLED;
 }






 if (irqflag & UARTn_INT_TX_OVERRUN) {
  mps2_uart_write8(port, UARTn_INT_TX_OVERRUN, UARTn_INT);
  handled = IRQ_HANDLED;
 }

 spin_unlock(&port->lock);

 return handled;
}
