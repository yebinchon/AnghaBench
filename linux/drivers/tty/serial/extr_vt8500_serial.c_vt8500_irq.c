
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned long RX_FIFO_INTS ;
 unsigned long TCTS ;
 unsigned long TX_FIFO_INTS ;
 int VT8500_URISR ;
 int handle_delta_cts (struct uart_port*) ;
 int handle_rx (struct uart_port*) ;
 int handle_tx (struct uart_port*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 unsigned long vt8500_read (struct uart_port*,int ) ;
 int vt8500_write (struct uart_port*,unsigned long,int ) ;

__attribute__((used)) static irqreturn_t vt8500_irq(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 unsigned long isr;

 spin_lock(&port->lock);
 isr = vt8500_read(port, VT8500_URISR);


 vt8500_write(port, isr, VT8500_URISR);

 if (isr & RX_FIFO_INTS)
  handle_rx(port);
 if (isr & TX_FIFO_INTS)
  handle_tx(port);
 if (isr & TCTS)
  handle_delta_cts(port);

 spin_unlock(&port->lock);

 return IRQ_HANDLED;
}
