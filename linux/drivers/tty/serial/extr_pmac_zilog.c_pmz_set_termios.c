
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct uart_pmac_port {int dummy; } ;
struct ktermios {int dummy; } ;


 scalar_t__ ZS_IS_OPEN (struct uart_pmac_port*) ;
 int __pmz_set_termios (struct uart_port*,struct ktermios*,struct ktermios*) ;
 int pmz_interrupt_control (struct uart_pmac_port*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_pmac_port* to_pmz (struct uart_port*) ;

__attribute__((used)) static void pmz_set_termios(struct uart_port *port, struct ktermios *termios,
       struct ktermios *old)
{
 struct uart_pmac_port *uap = to_pmz(port);
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);


 pmz_interrupt_control(uap, 0);


 __pmz_set_termios(port, termios, old);


 if (ZS_IS_OPEN(uap))
  pmz_interrupt_control(uap, 1);

 spin_unlock_irqrestore(&port->lock, flags);
}
