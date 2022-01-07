
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ltq_uart_port {int lock; int port; } ;
struct console {size_t index; } ;


 size_t MAXPORTS ;
 struct ltq_uart_port** lqasc_port ;
 int lqasc_serial_port_write (int *,char const*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
lqasc_console_write(struct console *co, const char *s, u_int count)
{
 struct ltq_uart_port *ltq_port;
 unsigned long flags;

 if (co->index >= MAXPORTS)
  return;

 ltq_port = lqasc_port[co->index];
 if (!ltq_port)
  return;

 spin_lock_irqsave(&ltq_port->lock, flags);
 lqasc_serial_port_write(&ltq_port->port, s, count);
 spin_unlock_irqrestore(&ltq_port->lock, flags);
}
