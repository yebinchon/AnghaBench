
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; int flags; } ;
struct ktermios {scalar_t__ c_line; int c_cflag; } ;


 scalar_t__ N_PPS ;
 int UART_ENABLE_MS (struct uart_port*,int ) ;
 int UPF_HARDPPS_CD ;
 int atmel_disable_ms (struct uart_port*) ;
 int atmel_enable_ms (struct uart_port*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void atmel_set_ldisc(struct uart_port *port, struct ktermios *termios)
{
 if (termios->c_line == N_PPS) {
  port->flags |= UPF_HARDPPS_CD;
  spin_lock_irq(&port->lock);
  atmel_enable_ms(port);
  spin_unlock_irq(&port->lock);
 } else {
  port->flags &= ~UPF_HARDPPS_CD;
  if (!UART_ENABLE_MS(port, termios->c_cflag)) {
   spin_lock_irq(&port->lock);
   atmel_disable_ms(port);
   spin_unlock_irq(&port->lock);
  }
 }
}
