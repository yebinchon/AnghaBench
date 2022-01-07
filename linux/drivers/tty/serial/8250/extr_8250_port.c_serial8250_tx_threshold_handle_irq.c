
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct uart_8250_port {int dummy; } ;


 int UART_IIR ;
 unsigned int UART_IIR_ID ;
 unsigned int UART_IIR_THRI ;
 int serial8250_handle_irq (struct uart_port*,unsigned int) ;
 int serial8250_tx_chars (struct uart_8250_port*) ;
 unsigned int serial_port_in (struct uart_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static int serial8250_tx_threshold_handle_irq(struct uart_port *port)
{
 unsigned long flags;
 unsigned int iir = serial_port_in(port, UART_IIR);


 if ((iir & UART_IIR_ID) == UART_IIR_THRI) {
  struct uart_8250_port *up = up_to_u8250p(port);

  spin_lock_irqsave(&port->lock, flags);
  serial8250_tx_chars(up);
  spin_unlock_irqrestore(&port->lock, flags);
 }

 iir = serial_port_in(port, UART_IIR);
 return serial8250_handle_irq(port, iir);
}
