
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;


 unsigned int TIOCSER_TEMT ;
 int ULITE_STATUS ;
 unsigned int ULITE_STATUS_TXEMPTY ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int uart_in32 (int ,struct uart_port*) ;

__attribute__((used)) static unsigned int ulite_tx_empty(struct uart_port *port)
{
 unsigned long flags;
 unsigned int ret;

 spin_lock_irqsave(&port->lock, flags);
 ret = uart_in32(ULITE_STATUS, port);
 spin_unlock_irqrestore(&port->lock, flags);

 return ret & ULITE_STATUS_TXEMPTY ? TIOCSER_TEMT : 0;
}
