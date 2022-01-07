
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct uart_8250_port {unsigned int lsr_saved_flags; } ;


 unsigned int BOTH_EMPTY ;
 unsigned int LSR_SAVE_FLAGS ;
 unsigned int TIOCSER_TEMT ;
 int UART_LSR ;
 int serial8250_rpm_get (struct uart_8250_port*) ;
 int serial8250_rpm_put (struct uart_8250_port*) ;
 unsigned int serial_port_in (struct uart_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static unsigned int serial8250_tx_empty(struct uart_port *port)
{
 struct uart_8250_port *up = up_to_u8250p(port);
 unsigned long flags;
 unsigned int lsr;

 serial8250_rpm_get(up);

 spin_lock_irqsave(&port->lock, flags);
 lsr = serial_port_in(port, UART_LSR);
 up->lsr_saved_flags |= lsr & LSR_SAVE_FLAGS;
 spin_unlock_irqrestore(&port->lock, flags);

 serial8250_rpm_put(up);

 return (lsr & BOTH_EMPTY) == BOTH_EMPTY ? TIOCSER_TEMT : 0;
}
