
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; scalar_t__ membase; } ;
typedef int irqreturn_t ;


 scalar_t__ AML_UART_CONTROL ;
 int AML_UART_RX_EMPTY ;
 scalar_t__ AML_UART_STATUS ;
 int AML_UART_TX_FULL ;
 int AML_UART_TX_INT_EN ;
 int IRQ_HANDLED ;
 int meson_receive_chars (struct uart_port*) ;
 int meson_uart_start_tx (struct uart_port*) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t meson_uart_interrupt(int irq, void *dev_id)
{
 struct uart_port *port = (struct uart_port *)dev_id;

 spin_lock(&port->lock);

 if (!(readl(port->membase + AML_UART_STATUS) & AML_UART_RX_EMPTY))
  meson_receive_chars(port);

 if (!(readl(port->membase + AML_UART_STATUS) & AML_UART_TX_FULL)) {
  if (readl(port->membase + AML_UART_CONTROL) & AML_UART_TX_INT_EN)
   meson_uart_start_tx(port);
 }

 spin_unlock(&port->lock);

 return IRQ_HANDLED;
}
