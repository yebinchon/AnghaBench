
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gb_tty* driver_data; } ;
struct gb_tty {int port; } ;


 int tty_port_hangup (int *) ;

__attribute__((used)) static void gb_tty_hangup(struct tty_struct *tty)
{
 struct gb_tty *gb_tty = tty->driver_data;

 tty_port_hangup(&gb_tty->port);
}
