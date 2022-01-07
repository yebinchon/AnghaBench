
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct tty_struct {int dummy; } ;
struct fwtty_port {int port; } ;


 int hangup ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout_uninterruptible (int ) ;
 struct fwtty_port* to_port (struct work_struct*,int ) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (int *) ;
 int tty_vhangup (struct tty_struct*) ;

__attribute__((used)) static void fwtty_do_hangup(struct work_struct *work)
{
 struct fwtty_port *port = to_port(work, hangup);
 struct tty_struct *tty;

 schedule_timeout_uninterruptible(msecs_to_jiffies(50));

 tty = tty_port_tty_get(&port->port);
 if (tty)
  tty_vhangup(tty);
 tty_kref_put(tty);
}
