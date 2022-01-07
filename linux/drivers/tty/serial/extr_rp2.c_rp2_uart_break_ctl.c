
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;


 int RP2_TXRX_CTL ;
 int RP2_TXRX_CTL_BREAK_m ;
 int port_to_up (struct uart_port*) ;
 int rp2_rmw (int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rp2_uart_break_ctl(struct uart_port *port, int break_state)
{
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 rp2_rmw(port_to_up(port), RP2_TXRX_CTL, RP2_TXRX_CTL_BREAK_m,
  break_state ? RP2_TXRX_CTL_BREAK_m : 0);
 spin_unlock_irqrestore(&port->lock, flags);
}
