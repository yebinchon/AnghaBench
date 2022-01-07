
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; scalar_t__ membase; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ MLB_USIO_REG_SSR ;
 int MLB_USIO_SSR_TBI ;
 int mlb_usio_tx_chars (struct uart_port*) ;
 int readb (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t mlb_usio_tx_irq(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;

 spin_lock(&port->lock);
 if (readb(port->membase + MLB_USIO_REG_SSR) & MLB_USIO_SSR_TBI)
  mlb_usio_tx_chars(port);
 spin_unlock(&port->lock);

 return IRQ_HANDLED;
}
