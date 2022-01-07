
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SPRD_ICLR ;
 int SPRD_ICLR_TIMEOUT ;
 int SPRD_IMSR ;
 unsigned int SPRD_IMSR_BREAK_DETECT ;
 unsigned int SPRD_IMSR_RX_FIFO_FULL ;
 unsigned int SPRD_IMSR_TIMEOUT ;
 unsigned int SPRD_IMSR_TX_FIFO_EMPTY ;
 unsigned int serial_in (struct uart_port*,int ) ;
 int serial_out (struct uart_port*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprd_rx (struct uart_port*) ;
 int sprd_tx (struct uart_port*) ;

__attribute__((used)) static irqreturn_t sprd_handle_irq(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 unsigned int ims;

 spin_lock(&port->lock);

 ims = serial_in(port, SPRD_IMSR);

 if (!ims) {
  spin_unlock(&port->lock);
  return IRQ_NONE;
 }

 if (ims & SPRD_IMSR_TIMEOUT)
  serial_out(port, SPRD_ICLR, SPRD_ICLR_TIMEOUT);

 if (ims & (SPRD_IMSR_RX_FIFO_FULL | SPRD_IMSR_BREAK_DETECT |
     SPRD_IMSR_TIMEOUT))
  sprd_rx(port);

 if (ims & SPRD_IMSR_TX_FIFO_EMPTY)
  sprd_tx(port);

 spin_unlock(&port->lock);

 return IRQ_HANDLED;
}
