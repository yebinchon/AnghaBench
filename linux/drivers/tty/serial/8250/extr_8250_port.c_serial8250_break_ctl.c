
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct uart_8250_port {int lcr; } ;


 int UART_LCR ;
 int UART_LCR_SBC ;
 int serial8250_rpm_get (struct uart_8250_port*) ;
 int serial8250_rpm_put (struct uart_8250_port*) ;
 int serial_port_out (struct uart_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static void serial8250_break_ctl(struct uart_port *port, int break_state)
{
 struct uart_8250_port *up = up_to_u8250p(port);
 unsigned long flags;

 serial8250_rpm_get(up);
 spin_lock_irqsave(&port->lock, flags);
 if (break_state == -1)
  up->lcr |= UART_LCR_SBC;
 else
  up->lcr &= ~UART_LCR_SBC;
 serial_port_out(port, UART_LCR, up->lcr);
 spin_unlock_irqrestore(&port->lock, flags);
 serial8250_rpm_put(up);
}
