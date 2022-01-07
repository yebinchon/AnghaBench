
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int lock; } ;


 int RDA_UART_STATUS ;
 int RDA_UART_TX_FIFO_MASK ;
 unsigned int TIOCSER_TEMT ;
 int rda_uart_read (struct uart_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int rda_uart_tx_empty(struct uart_port *port)
{
 unsigned long flags;
 unsigned int ret;
 u32 val;

 spin_lock_irqsave(&port->lock, flags);

 val = rda_uart_read(port, RDA_UART_STATUS);
 ret = (val & RDA_UART_TX_FIFO_MASK) ? TIOCSER_TEMT : 0;

 spin_unlock_irqrestore(&port->lock, flags);

 return ret;
}
