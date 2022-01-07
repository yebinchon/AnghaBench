
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; scalar_t__ membase; } ;


 unsigned int STAT_TX_FIFO_EMP ;
 unsigned int TIOCSER_TEMT ;
 scalar_t__ UART_STAT ;
 unsigned int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int mvebu_uart_tx_empty(struct uart_port *port)
{
 unsigned long flags;
 unsigned int st;

 spin_lock_irqsave(&port->lock, flags);
 st = readl(port->membase + UART_STAT);
 spin_unlock_irqrestore(&port->lock, flags);

 return (st & STAT_TX_FIFO_EMP) ? TIOCSER_TEMT : 0;
}
