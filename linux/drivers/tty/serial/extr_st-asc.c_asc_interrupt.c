
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int lock; } ;
typedef int irqreturn_t ;


 int ASC_INTEN ;
 int ASC_INTEN_THE ;
 int ASC_STA ;
 int ASC_STA_RBF ;
 int ASC_STA_THE ;
 int IRQ_HANDLED ;
 int asc_in (struct uart_port*,int ) ;
 int asc_receive_chars (struct uart_port*) ;
 int asc_transmit_chars (struct uart_port*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t asc_interrupt(int irq, void *ptr)
{
 struct uart_port *port = ptr;
 u32 status;

 spin_lock(&port->lock);

 status = asc_in(port, ASC_STA);

 if (status & ASC_STA_RBF) {

  asc_receive_chars(port);
 }

 if ((status & ASC_STA_THE) &&
     (asc_in(port, ASC_INTEN) & ASC_INTEN_THE)) {

  asc_transmit_chars(port);
 }

 spin_unlock(&port->lock);

 return IRQ_HANDLED;
}
