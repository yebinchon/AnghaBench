
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int irq; int lock; } ;


 int OWL_UART_CTL ;
 int OWL_UART_CTL_EN ;
 int OWL_UART_CTL_RXDE ;
 int OWL_UART_CTL_RXIE ;
 int OWL_UART_CTL_TXDE ;
 int OWL_UART_CTL_TXIE ;
 int free_irq (int ,struct uart_port*) ;
 int owl_uart_read (struct uart_port*,int ) ;
 int owl_uart_write (struct uart_port*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void owl_uart_shutdown(struct uart_port *port)
{
 u32 val;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);

 val = owl_uart_read(port, OWL_UART_CTL);
 val &= ~(OWL_UART_CTL_TXIE | OWL_UART_CTL_RXIE
  | OWL_UART_CTL_TXDE | OWL_UART_CTL_RXDE | OWL_UART_CTL_EN);
 owl_uart_write(port, val, OWL_UART_CTL);

 spin_unlock_irqrestore(&port->lock, flags);

 free_irq(port->irq, port);
}
