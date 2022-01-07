
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct tty_port {int dummy; } ;


 int C_CLOCAL (struct tty_struct*) ;
 int tty_hangup (struct tty_struct*) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (struct tty_port*) ;

void tty_port_tty_hangup(struct tty_port *port, bool check_clocal)
{
 struct tty_struct *tty = tty_port_tty_get(port);

 if (tty && (!check_clocal || !C_CLOCAL(tty)))
  tty_hangup(tty);
 tty_kref_put(tty);
}
