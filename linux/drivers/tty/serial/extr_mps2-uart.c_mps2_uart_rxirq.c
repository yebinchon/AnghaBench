
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_port {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int UARTn_INT ;
 int UARTn_INT_RX ;
 int mps2_uart_read8 (struct uart_port*,int ) ;
 int mps2_uart_rx_chars (struct uart_port*) ;
 int mps2_uart_write8 (struct uart_port*,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t mps2_uart_rxirq(int irq, void *data)
{
 struct uart_port *port = data;
 u8 irqflag = mps2_uart_read8(port, UARTn_INT);

 if (unlikely(!(irqflag & UARTn_INT_RX)))
  return IRQ_NONE;

 spin_lock(&port->lock);

 mps2_uart_write8(port, UARTn_INT_RX, UARTn_INT);
 mps2_uart_rx_chars(port);

 spin_unlock(&port->lock);

 return IRQ_HANDLED;
}
