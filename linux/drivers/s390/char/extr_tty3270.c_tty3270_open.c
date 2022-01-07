
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct tty3270* driver_data; } ;
struct tty_port {int count; } ;
struct tty3270 {struct tty_port port; } ;
struct file {int dummy; } ;


 int tty_port_tty_set (struct tty_port*,struct tty_struct*) ;

__attribute__((used)) static int
tty3270_open(struct tty_struct *tty, struct file *filp)
{
 struct tty3270 *tp = tty->driver_data;
 struct tty_port *port = &tp->port;

 port->count++;
 tty_port_tty_set(port, tty);
 return 0;
}
