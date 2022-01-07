
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct moxa_port* driver_data; } ;
struct moxa_port {int port; } ;


 int tty_port_hangup (int *) ;

__attribute__((used)) static void moxa_hangup(struct tty_struct *tty)
{
 struct moxa_port *ch = tty->driver_data;
 tty_port_hangup(&ch->port);
}
