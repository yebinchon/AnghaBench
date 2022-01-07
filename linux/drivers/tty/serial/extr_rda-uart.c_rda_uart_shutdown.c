
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int lock; } ;


 int RDA_UART_CTRL ;
 int RDA_UART_ENABLE ;
 int rda_uart_read (struct uart_port*,int ) ;
 int rda_uart_stop_rx (struct uart_port*) ;
 int rda_uart_stop_tx (struct uart_port*) ;
 int rda_uart_write (struct uart_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rda_uart_shutdown(struct uart_port *port)
{
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&port->lock, flags);

 rda_uart_stop_tx(port);
 rda_uart_stop_rx(port);

 val = rda_uart_read(port, RDA_UART_CTRL);
 val &= ~RDA_UART_ENABLE;
 rda_uart_write(port, val, RDA_UART_CTRL);

 spin_unlock_irqrestore(&port->lock, flags);
}
