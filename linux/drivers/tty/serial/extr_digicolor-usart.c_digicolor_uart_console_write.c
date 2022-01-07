
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_port {scalar_t__ membase; int lock; } ;
struct console {size_t index; } ;


 scalar_t__ UA_STATUS ;
 int UA_STATUS_TX_READY ;
 struct uart_port** digicolor_ports ;
 int digicolor_uart_console_putchar ;
 scalar_t__ oops_in_progress ;
 int readb_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_trylock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uart_console_write (struct uart_port*,char const*,unsigned int,int ) ;

__attribute__((used)) static void digicolor_uart_console_write(struct console *co, const char *c,
      unsigned n)
{
 struct uart_port *port = digicolor_ports[co->index];
 u8 status;
 unsigned long flags;
 int locked = 1;

 if (oops_in_progress)
  locked = spin_trylock_irqsave(&port->lock, flags);
 else
  spin_lock_irqsave(&port->lock, flags);

 uart_console_write(port, c, n, digicolor_uart_console_putchar);

 if (locked)
  spin_unlock_irqrestore(&port->lock, flags);


 do {
  status = readb_relaxed(port->membase + UA_STATUS);
 } while ((status & UA_STATUS_TX_READY) == 0);
}
