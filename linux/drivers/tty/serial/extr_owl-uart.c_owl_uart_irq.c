
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int OWL_UART_STAT ;
 int OWL_UART_STAT_RIP ;
 int OWL_UART_STAT_TIP ;
 int owl_uart_read (struct uart_port*,int ) ;
 int owl_uart_receive_chars (struct uart_port*) ;
 int owl_uart_send_chars (struct uart_port*) ;
 int owl_uart_write (struct uart_port*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t owl_uart_irq(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 unsigned long flags;
 u32 stat;

 spin_lock_irqsave(&port->lock, flags);

 stat = owl_uart_read(port, OWL_UART_STAT);

 if (stat & OWL_UART_STAT_RIP)
  owl_uart_receive_chars(port);

 if (stat & OWL_UART_STAT_TIP)
  owl_uart_send_chars(port);

 stat = owl_uart_read(port, OWL_UART_STAT);
 stat |= OWL_UART_STAT_RIP | OWL_UART_STAT_TIP;
 owl_uart_write(port, stat, OWL_UART_STAT);

 spin_unlock_irqrestore(&port->lock, flags);

 return IRQ_HANDLED;
}
