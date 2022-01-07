
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int port; } ;


 int tty_port_hangup (int ) ;

__attribute__((used)) static void goldfish_tty_hangup(struct tty_struct *tty)
{
 tty_port_hangup(tty->port);
}
