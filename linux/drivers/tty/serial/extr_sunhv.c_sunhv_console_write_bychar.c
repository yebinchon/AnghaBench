
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; scalar_t__ sysrq; } ;
struct console {int dummy; } ;


 scalar_t__ oops_in_progress ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_trylock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sunhv_console_putchar (struct uart_port*,char) ;
 struct uart_port* sunhv_port ;

__attribute__((used)) static void sunhv_console_write_bychar(struct console *con, const char *s, unsigned n)
{
 struct uart_port *port = sunhv_port;
 unsigned long flags;
 int i, locked = 1;

 if (port->sysrq || oops_in_progress)
  locked = spin_trylock_irqsave(&port->lock, flags);
 else
  spin_lock_irqsave(&port->lock, flags);

 for (i = 0; i < n; i++) {
  if (*s == '\n')
   sunhv_console_putchar(port, '\r');
  sunhv_console_putchar(port, *s++);
 }

 if (locked)
  spin_unlock_irqrestore(&port->lock, flags);
}
