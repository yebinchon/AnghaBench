
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct tty_port {int dummy; } ;


 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (struct tty_port*) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void tty_port_default_wakeup(struct tty_port *port)
{
 struct tty_struct *tty = tty_port_tty_get(port);

 if (tty) {
  tty_wakeup(tty);
  tty_kref_put(tty);
 }
}
