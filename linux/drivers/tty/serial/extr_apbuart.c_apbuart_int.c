
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int UART_GET_STATUS (struct uart_port*) ;
 unsigned int UART_STATUS_DR ;
 unsigned int UART_STATUS_THE ;
 int apbuart_rx_chars (struct uart_port*) ;
 int apbuart_tx_chars (struct uart_port*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t apbuart_int(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 unsigned int status;

 spin_lock(&port->lock);

 status = UART_GET_STATUS(port);
 if (status & UART_STATUS_DR)
  apbuart_rx_chars(port);
 if (status & UART_STATUS_THE)
  apbuart_tx_chars(port);

 spin_unlock(&port->lock);

 return IRQ_HANDLED;
}
