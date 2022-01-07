
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_cflag; } ;
struct tty_struct {TYPE_1__ termios; struct moxa_port* driver_data; } ;
struct moxa_port {int port; int cflag; } ;
struct file {int dummy; } ;


 int tty_port_close (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static void moxa_close(struct tty_struct *tty, struct file *filp)
{
 struct moxa_port *ch = tty->driver_data;
 ch->cflag = tty->termios.c_cflag;
 tty_port_close(&ch->port, tty, filp);
}
