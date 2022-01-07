
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int RXIENB ;
 unsigned int TXEMPTY ;
 unsigned int TXIENB ;
 unsigned int UART_GET_STATUS (struct uart_port*) ;
 int UART_TX_IRQ_DISABLE (struct uart_port*) ;
 int arc_serial_rx_chars (struct uart_port*,unsigned int) ;
 int arc_serial_tx_chars (struct uart_port*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int uart_tx_stopped (struct uart_port*) ;

__attribute__((used)) static irqreturn_t arc_serial_isr(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 unsigned int status;

 status = UART_GET_STATUS(port);






 if (status & RXIENB) {


  spin_lock(&port->lock);
  arc_serial_rx_chars(port, status);
  spin_unlock(&port->lock);
 }

 if ((status & TXIENB) && (status & TXEMPTY)) {




  UART_TX_IRQ_DISABLE(port);

  spin_lock(&port->lock);

  if (!uart_tx_stopped(port))
   arc_serial_tx_chars(port);

  spin_unlock(&port->lock);
 }

 return IRQ_HANDLED;
}
