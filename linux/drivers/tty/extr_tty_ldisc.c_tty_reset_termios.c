
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int c_ospeed; int c_ispeed; } ;
struct tty_struct {int termios_rwsem; TYPE_2__ termios; TYPE_1__* driver; } ;
struct TYPE_4__ {TYPE_2__ init_termios; } ;


 int down_write (int *) ;
 int tty_termios_baud_rate (TYPE_2__*) ;
 int tty_termios_input_baud_rate (TYPE_2__*) ;
 int up_write (int *) ;

__attribute__((used)) static void tty_reset_termios(struct tty_struct *tty)
{
 down_write(&tty->termios_rwsem);
 tty->termios = tty->driver->init_termios;
 tty->termios.c_ispeed = tty_termios_input_baud_rate(&tty->termios);
 tty->termios.c_ospeed = tty_termios_baud_rate(&tty->termios);
 up_write(&tty->termios_rwsem);
}
