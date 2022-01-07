
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct rp2_uart_port {int idx; } ;


 int RP2_CHAN_STAT ;
 struct rp2_uart_port* port_to_up (struct uart_port*) ;
 int rp2_mask_ch_irq (struct rp2_uart_port*,int ,int ) ;
 int rp2_rmw (struct rp2_uart_port*,int ,int ,int ) ;
 int rp2_uart_break_ctl (struct uart_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rp2_uart_shutdown(struct uart_port *port)
{
 struct rp2_uart_port *up = port_to_up(port);
 unsigned long flags;

 rp2_uart_break_ctl(port, 0);

 spin_lock_irqsave(&port->lock, flags);
 rp2_mask_ch_irq(up, up->idx, 0);
 rp2_rmw(up, RP2_CHAN_STAT, 0, 0);
 spin_unlock_irqrestore(&port->lock, flags);
}
