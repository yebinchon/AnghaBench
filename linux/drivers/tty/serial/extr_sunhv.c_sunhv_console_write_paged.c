
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; scalar_t__ sysrq; } ;
struct console {int dummy; } ;


 unsigned long HV_EOK ;
 unsigned long __pa (int ) ;
 int con_write_page ;
 unsigned int fill_con_write_page (char const*,unsigned int,unsigned long*) ;
 scalar_t__ oops_in_progress ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_trylock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long sun4v_con_write (unsigned long,unsigned long,unsigned long*) ;
 struct uart_port* sunhv_port ;
 int udelay (int) ;

__attribute__((used)) static void sunhv_console_write_paged(struct console *con, const char *s, unsigned n)
{
 struct uart_port *port = sunhv_port;
 unsigned long flags;
 int locked = 1;

 if (port->sysrq || oops_in_progress)
  locked = spin_trylock_irqsave(&port->lock, flags);
 else
  spin_lock_irqsave(&port->lock, flags);

 while (n > 0) {
  unsigned long ra = __pa(con_write_page);
  unsigned long page_bytes;
  unsigned int cpy = fill_con_write_page(s, n,
             &page_bytes);

  n -= cpy;
  s += cpy;
  while (page_bytes > 0) {
   unsigned long written;
   int limit = 1000000;

   while (limit--) {
    unsigned long stat;

    stat = sun4v_con_write(ra, page_bytes,
             &written);
    if (stat == HV_EOK)
     break;
    udelay(1);
   }
   if (limit < 0)
    break;
   page_bytes -= written;
   ra += written;
  }
 }

 if (locked)
  spin_unlock_irqrestore(&port->lock, flags);
}
