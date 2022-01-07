
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_2__ {int brk; } ;
struct fwtty_port {unsigned long break_last; unsigned long cps; int mstatus; TYPE_1__ icount; int emit_breaks; int port; } ;


 int FREQ_BREAKS ;
 unsigned long HZ ;
 int TTY_BREAK ;
 int UART_LSR_BI ;
 int emit_breaks ;
 int fwtty_dbg (struct fwtty_port*,char*,int) ;
 unsigned long jiffies ;
 int min (int,int) ;
 int schedule_delayed_work (int *,int ) ;
 int to_delayed_work (struct work_struct*) ;
 struct fwtty_port* to_port (int ,int ) ;
 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_string_fixed_flag (int *,char const*,int ,int) ;

__attribute__((used)) static void fwtty_emit_breaks(struct work_struct *work)
{
 struct fwtty_port *port = to_port(to_delayed_work(work), emit_breaks);
 static const char buf[16];
 unsigned long now = jiffies;
 unsigned long elapsed = now - port->break_last;
 int n, t, c, brk = 0;


 n = (elapsed * port->cps) / HZ + 1;
 port->break_last = now;

 fwtty_dbg(port, "sending %d brks\n", n);

 while (n) {
  t = min(n, 16);
  c = tty_insert_flip_string_fixed_flag(&port->port, buf,
            TTY_BREAK, t);
  n -= c;
  brk += c;
  if (c < t)
   break;
 }
 tty_flip_buffer_push(&port->port);

 if (port->mstatus & (UART_LSR_BI << 24))
  schedule_delayed_work(&port->emit_breaks, FREQ_BREAKS);
 port->icount.brk += brk;
}
