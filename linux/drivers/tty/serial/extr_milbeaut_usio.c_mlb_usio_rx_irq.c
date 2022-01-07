
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mlb_usio_rx_chars (struct uart_port*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t mlb_usio_rx_irq(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;

 spin_lock(&port->lock);
 mlb_usio_rx_chars(port);
 spin_unlock(&port->lock);

 return IRQ_HANDLED;
}
