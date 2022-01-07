
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int port; } ;


 int tty_port_put (int ) ;

__attribute__((used)) static void pty_cleanup(struct tty_struct *tty)
{
 tty_port_put(tty->port);
}
