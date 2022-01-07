
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int lock; } ;


 int OWL_UART_STAT ;
 int OWL_UART_STAT_TFES ;
 unsigned int TIOCSER_TEMT ;
 int owl_uart_read (struct uart_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int owl_uart_tx_empty(struct uart_port *port)
{
 unsigned long flags;
 u32 val;
 unsigned int ret;

 spin_lock_irqsave(&port->lock, flags);

 val = owl_uart_read(port, OWL_UART_STAT);
 ret = (val & OWL_UART_STAT_TFES) ? TIOCSER_TEMT : 0;

 spin_unlock_irqrestore(&port->lock, flags);

 return ret;
}
