
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct rp2_uart_port {TYPE_1__ port; scalar_t__ base; } ;


 scalar_t__ RP2_TX_FIFO_COUNT ;
 unsigned int TIOCSER_TEMT ;
 struct rp2_uart_port* port_to_up (struct uart_port*) ;
 unsigned long readw (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int rp2_uart_tx_empty(struct uart_port *port)
{
 struct rp2_uart_port *up = port_to_up(port);
 unsigned long tx_fifo_bytes, flags;






 spin_lock_irqsave(&up->port.lock, flags);
 tx_fifo_bytes = readw(up->base + RP2_TX_FIFO_COUNT);
 spin_unlock_irqrestore(&up->port.lock, flags);

 return tx_fifo_bytes ? 0 : TIOCSER_TEMT;
}
